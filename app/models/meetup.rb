class Meetup < ActiveRecord::Base
  scope :upcoming, -> { where('ends_at > ?', Time.now) }
end
