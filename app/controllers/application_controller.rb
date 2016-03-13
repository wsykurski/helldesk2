class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :getUser
  before_action :authorize

  private

  def getUser
    @current_user = User.find_by_id(session[:user_id])
  end

  def authorize
    unless @current_user
      redirect_to login_url, notice: "You have to log in first !!!"
    end
  end
end
