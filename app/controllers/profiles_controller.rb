class ProfilesController < ApplicationController
  def index
  end

  def show
  end

  helper_method :profile, :profiles

  private

  def profiles
    @profiles ||= User.all.map { |u| ProfilePresenter.new(u) }
  end

  def profile
    @profile ||= ProfilePresenter.new(user)
  end

  def user
    @user ||= User.find(params[:id])
  end
end
