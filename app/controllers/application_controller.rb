class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  protected

   def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:sign_up) << :image
    devise_parameter_sanitizer.for(:sign_up) << :link	
    devise_parameter_sanitizer.for(:sign_up) << :uid
    devise_parameter_sanitizer.for(:sign_up) << :provider
    devise_parameter_sanitizer.for(:sign_up) << :gender
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :profile
    devise_parameter_sanitizer.for(:sign_up) << :picture
    devise_parameter_sanitizer.for(:sign_up) << :birthday
  end
 
end
