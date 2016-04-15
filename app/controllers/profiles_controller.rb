class ProfilesController < ApplicationController

  def index
  end

  def show
    @user = User.find(session[:user_id])
    @profile = Profile.new
  end

  def new
    @user = User.find(session[:user_id])
    @profile = Profile.new
  end

  def create
    @user = User.find(session[:user_id])
    @user.profile = Profile.create(profile_params)
    redirect_to '/profile'
  end
end

private

  def profile_params
        params.require(:profile).permit(:dob, :bio, :location, :website, :musical_dreamteam, :avatar)
  end
