class Rsvp < ActiveRecord::Base
  belongs_to :user
  belongs_to :meetup

  scope :confirmed, -> { where(attending: true) }
end
