class ProfilesController < ApplicationController

  ##We don't need add and create here as users will always come thru the account signup path before reaching this point.

  before_action :set_user, only: [:create, :new]

  def index
  end

  def new
  end

  def create
  end

  def show
    @profile = current_user.profile
  end

  def edit
    @profile = current_user.profile || current_user.profile.build
  end

  def update
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    # @profile.first_name = profile_params[:first_name]
    @profile.save!
    flash[:notice] = "Profile set"
    redirect_to root_path
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :dob, :gender, :user_id, :is_client)
  end

  def set_user
    @profile = current_user # instead of User.find(params[:id]) for security reasons as someone could just change the url and access another account
  end

end
