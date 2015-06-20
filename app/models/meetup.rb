class Meetup < ActiveRecord::Base
  belongs_to :location
  has_many :rsvps
  scope :upcoming, -> { where('ends_at > ?', Time.now) }
end
