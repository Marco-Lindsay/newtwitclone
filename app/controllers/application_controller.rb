class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 include PublicActivity::StoreController

  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  before_filter :authenticate_user!

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end
  #helper_method :current_user
  hide_action :current_user

  protected
 
  # def devise_parameter_sanitizer
  #   if resource_class == User
  #     User::ParameterSanitizer.new(User, :user, params)
  #   else
  #     super
  #   end
  # end

def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

end
