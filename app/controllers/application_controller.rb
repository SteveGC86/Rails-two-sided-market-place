class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery

  def after_sign_in_path_for(resource)
    if current_user.profile.nil?
      new_profile_path
    else
      root_path
    end
  end
end
