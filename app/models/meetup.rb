class Meetup < ActiveRecord::Base
  belongs_to :location
  has_many :rsvps
  has_many :members, through: :rsvps, source: :user
  scope :upcoming, -> { where('ends_at > ?', Time.now) }

  def confirmed_attendees
    rsvps.confirmed
  end

  def rsvp_for(user)
    rsvps.find { |rsvp| rsvp.user_id == user.id }
  end

  def rsvped?(user)
    !!rsvp_for(user)
  end

  def attending?(user)
    rsvp = rsvp_for(user)
    !!(rsvp && rsvp.attending?)
  end
end
