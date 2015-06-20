class Meetup < ActiveRecord::Base
  belongs_to :location
  scope :upcoming, -> { where('ends_at > ?', Time.now) }
end
