class GigsController < ApplicationController
  def index
    @gigs = Gig.all
    @user = User.find(session[:user_id])
    @gig = @user.gigs.new
  end

  def new
    @user = User.find(session[:user_id])
    @gig = @user.gigs.new
  end

  def show
    @gig = Gig.find_by(params[:id])
  end

  def create
    @user = User.find(session[:user_id])
    @gig = @user.gigs.new(gig_params)
    if @gig.save
      redirect_to gigs_path
    else
      render :new
    end

  end

  def destroy
    id = params[:id]
    gig = Gig.find_by(id: id)
    gig.destroy
    redirect_to gigs_path
  end

private

  def gig_params
    params.require(:gig).permit(:title, :body, :time, :gig_type, :user_id)
  end

end
