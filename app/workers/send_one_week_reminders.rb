# Public: Scheduled worker which checks for weekly meetup reminders to send.
#
# This class should be automatically invoked by Sidekiq daily which checks for
# meetups whom have RSVPs that need to be reminded a week before the meetup.
#
# Examples
#
#   SendOneWeekReminders::perform_async
#   # => <job_id>
class SendOneWeekReminders
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  # Check daily for emails to send.
  recurrence { daily }

  def perform
    # Let's actually do something hurr, ya?
  end
end
