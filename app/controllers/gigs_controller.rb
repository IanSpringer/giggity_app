class GigsController < ApplicationController
  before_action :check_owner, only: [:edit, :destroy]

  def index
    @gigs = Gig.all.order(created_at: 'DESC')
    @user = User.find(session[:user_id])
    @gig = @user.gigs.new
  end

  def new
    @user = User.find(session[:user_id])
    @gig = @user.gigs.new
  end

  def show
    @gig = Gig.find(params[:id])
  end

  def create
    @user = User.find(session[:user_id])
    @gig = @user.gigs.new(gig_params)
    # @gig= Gig.find(params[:id])
    if @gig.save
      redirect_to gigs_path
    else
      render :new
    end

  end

  def edit

  end

  def update
    @gig = Gig.new(bean_params)

    if @gig.save
      redirect_to gig_path(@gig)
    else
      render :new
    end
  end


  def destroy
    @gig = Gig.find(params[:id])
    @gig.destroy
    redirect_to gigs_path
  end


private

  def gig_params
    params.require(:gig).permit(:title, :body, :time, :gig_type, :user_id)
  end

  def check_owner
    # id = params[:id]
    @gig = Gig.find(params[:id])
    @current_user = User.find(session[:user_id])
      if @current_user.id != @gig.user.id

      # flash.alert = "You can only delete gigs that you have posted"
      redirect_to '/gigs'
    end
  end
end

