class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    user = User.find_by({email: params[:email]})

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to gigs_path
    else
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
