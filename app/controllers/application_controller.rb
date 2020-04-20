class ApplicationController < ActionController::Base

  helper_method :current_user

  private

  def current_user
    current_user ||=User.find_by_username(session[:user_id]) if session[:user_id]
  end 

  def reset_session
    @_request.reset_session
  end

end
