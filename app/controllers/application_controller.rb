class ApplicationController < ActionController::Base

  protect_from_forgery with: :null_session

  def not_authenticated
   redirect_to login_path, :alert => "you wanna be in the family? first, you gotta log in."
  end

  helper_method :current_member

  def current_member
    Member.find(session[:member_id]) if session[:member_id]
  end

  def authorize
    redirect_to root_path if current_member.nil?
  end

end
