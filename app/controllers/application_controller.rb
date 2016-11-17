class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  skip_before_filter :verify_authenticity_token, :only => [:index, :like, :show]
  protect_from_forgery with: :exception
end
