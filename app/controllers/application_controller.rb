class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    versus_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end
 
  def configure_permitted_parameters
    attributes = [:username, :email, :avatar]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:sign_in, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end
