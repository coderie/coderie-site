class RsvpsController < ApplicationController
  RSVP_MAP = { 'yes' => true, 'no' => false }

  def update
    rsvp = meetup.rsvp_for(current_user) || Rsvp.new(meetup: meetup, user: current_user)

    if response_is_boolean?
      rsvp.update_attributes(attending: RSVP_MAP[params[:response]])
    elsif params[:response] == 'maybe'
      rsvp.destroy
    end

    # Make this default for json xhr requests:
    # head :no_content
    redirect_to meetup
  end

  private

  def meetup
    @meetup ||= Meetup.find params[:meetup_id]
  end

  def response_is_boolean?
    RSVP_MAP.keys.include? params[:response]
  end
end
