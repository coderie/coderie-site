class HomeController < ApplicationController
  def index

    render :index, locals: { upcoming_meetups: Meetup.upcoming }
  end
end
