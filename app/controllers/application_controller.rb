class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    return root_path if resource.class == User
    return root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def current_user
      @_current_user ||= session[:current_user_id] &&
        User.find(session[:current_user_id])
    end

  layout :layout_by_resource

  protected

  def layout_by_resource
   if devise_controller?
     false
   else
     "application"
   end
  end

end
