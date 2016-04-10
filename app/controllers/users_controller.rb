class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
    user = User.new({
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      })

      if user.save
      session[:user_id] = user.id
      redirect_to '/home'
    else
      render :new
    end
   end

   def home
   end

  end

#   def destroy
#   end
# end
