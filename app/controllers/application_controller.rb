class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  helper_method :current_profile
  attr_reader :current_profile

  def current_profile
    current_user.profile
  end

  def after_sign_in_path_for(resource)
    Profile.create(user_id: resource.id)
    edit_profile_path(resource.profile.id)
    # if resource.sign_in_count == 1
    #    new_product_path
    # else
    #    root_path
    # end
  end

end
