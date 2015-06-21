class MeetupsController < ApplicationController
  def index

  end

  def show
    render :show, locals: { meetup: MeetupPresenter.new(meetup) }
  end

  helper_method :meetup, :meetups

  def meetups
    @meetups ||= Meetup.all
  end

  def meetup
    @meetup ||= Meetup.find params[:id]
  end
end
