class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:username, :email, :password])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:username, :email, :password])
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # skip_before_filter :verify_authenticity_token, :only => [:index, :like, :show]
  protect_from_forgery with: :exception
end
