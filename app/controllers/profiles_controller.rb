class ProfilesController < ApplicationController

  ##We don't need add and create here as users will always come thru the account signup path before reaching this point.
  before_action :set_profile, only: [:create, :new, :edit, :update]

  def index
  end

  def show
    @profile = current_user.profile
  end

  def edit
    @profile = current_user.profile || current_user.profile.build
  end

  def update
    @profile.update(profile_params)
    # @profile.first_name = profile_params[:first_name]
    @profile.save!
    flash[:notice] = "Profile set"
    if params[:first_time]
      redirect_to root_path(first_time: true)
    else
      redirect_to root_path
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :dob, :gender, :user_id, :is_client)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end

end
