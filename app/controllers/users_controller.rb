class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    user = User.new({
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      })

    first_name = params[:first_name]
    user.first_name = first_name

    if user.save
      session[:user_id] = user.id
      redirect_to gigs_path
    else
      render :new

    end
   end



  def destroy
  end
end
