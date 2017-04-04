class ProfilesController < ApplicationController

  ##We don't need add and create here as users will always come thru the account signup path before reaching this point.

  before_action :set_user

  def index
  end

  def new
  end

  def create
  end

  def show
    @user_profile = Profile.find(params[:id])
  end

  def edit
    
    @user_profile = Profile.find(params[:id])
  end

  def update
    # @user = User.new(user_params)
    @profile.first_name = user_params[:first_name]
    @profile.save!
    flash[:notice] = "Profile set"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :user_id)
  end

  def set_user
    @profile = current_user # instead of User.find(params[:id]) for security reasons as someone could just change the url and access another account
  end

end
