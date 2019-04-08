# frozen_string_literal: true

class SessionController < ApplicationController
  def login; end

  def do_login
    if session[:faculty]
      if session[:faculty]['email'] == params[:email]
        redirect_to session_dashboard_path, notice: 'Already logged in'
      else
        redirect_to session_login_path, notice: 'Unknown email: Go away'
      end
    else
      email = params[:email]
      if Faculty.exists?(email: email)
        session[:faculty] = Faculty.find_by_email(email)
        redirect_to session_dashboard_path
      else
        redirect_to session_login_path, notice: "Unidentified Email. Please try again"
      end
    end
  end

  def do_logout
    session[:faculty] = nil
    redirect_to session_login_path, notice: 'Logged out'
  end

  def dashboard
    redirect_to session_dashboard_path, notice: 'Course not allowed unless you are logged in' if session[:faculty].nil?
  end

end
