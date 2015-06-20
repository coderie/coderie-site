class Meetup < ActiveRecord::Base
  belongs_to :location
  has_many :rsvps
  has_many :members, through: :rsvps, source: :user
  scope :upcoming, -> { where('ends_at > ?', Time.now) }

  def confirmed_attendees
    rsvps.confirmed
  end
end
