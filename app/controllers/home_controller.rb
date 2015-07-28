class HomeController < ApplicationController
  def index
    render :index, locals: { upcoming_meetups: Meetup.upcoming.map { |m| MeetupPresenter.new(m) } }
  end
end
