class ApplicationController < ActionController::Base


  private
  def authorize_user
    redirect_to :session_login if session[:user_id].nil?
  end

  def current_user
    @current_user ||=Faculty.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
end
