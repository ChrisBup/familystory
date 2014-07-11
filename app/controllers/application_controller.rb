class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  def not_authenticated
   redirect_to login_path, :alert => "first log in to access this page."
  end
end
