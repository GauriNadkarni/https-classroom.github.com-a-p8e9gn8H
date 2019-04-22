# frozen_string_literal: true

class SessionController < ApplicationController
  def login; end

  def do_login
      email = params[:email]
      user=Faculty.find_by(email: email)
      if user.nil?
        redirect_to session_login_path, notice: 'Unknown email'
      else
        session[ :user_id]=user.id
        if current_user.admin?
          redirect_to faculties_path
        else
          redirect_to course_evaluations_path
        end
      end

    # if session[:faculty]
    #   if session[:faculty]['email'] == params[:email]
    #     redirect_to session_dashboard_path, notice: 'Already logged in'
    #   else
    #     redirect_to session_login_path, notice: 'Unknown email'
    #   end
    # else
    #   email = params[:email]
    #   if Faculty.exists?(email: email)
    #     session[:faculty] = Faculty.find_by_email(email)
    #     redirect_to session_dashboard_path
    #   else
    #     redirect_to session_login_path, notice: "Unidentified Email. Please try again"
    #   end
    # end
  end

  def do_logout
    session[:faculty] = nil
    session.delete(:faculty)
    reset_session
    redirect_to session_login_path, notice: 'Logged out'

  end

  def dashboard
    redirect_to session_dashboard_path, notice: 'Course not allowed unless you are logged in' if session[:faculty].nil?
  end

  # def create
  #   email=params[:email]
  #   user = Faculty.find_by(email:email)
  #   if user.nil?
  #     redirect_to session_login_path, notice: 'Email does not exist'
  #   else
  #     session[:user_id] - user.id
  #     if current_user.admin?
  #       redirect_to faculties_path
  #       else
  #     end
  #   end
  # end

=begin
  /*
  def update
    id = params[:id].to_i
    session[:id] = Faculty::ROLES.has_key?(id) ? id : 0
    flash[:success] = "Your new role #{User::ROLES[id]} was set!"
    redirect_to root_path
  end
*/
=end
end
