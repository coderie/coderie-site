require 'delegate'

class MeetupPresenter < SimpleDelegator
  DATE_FORMAT = '%A, %B %d, %Y'.freeze
  TIME_FORMAT = '%I:%M%P'.freeze

  def attending?(user)
    @object.attending?(current_user) ? 'Yes' : 'No'
  end

  def days_away(date = Time.zone.now)
    (starts_at.to_date - date.to_date).to_i
  end

  def date
    starts_at.strftime(DATE_FORMAT)
  end

  def start_time
    starts_at.strftime(TIME_FORMAT)
  end

  def rsvp_status(user)
    rsvp = rsvp_for(user)
    return 'Maybe' if rsvp.nil?

    rsvp.attending? ? 'Yes' : 'No'
  end

  def members_attending
    confirmed_attendees.count
  end

  def members_unavailable
    unavailable_attendees.count
  end

  def members_undecided
    members.count - members_attending + members_unavailable
  end

  def location_name
    location.name
  end

  def full_address
    location.to_s
  end
end
