class ApplicationController < ActionController::Base
  helper_method :current_user
  protected # prevents method from being invoked by a route
  
  def current_user
    @current_user ||= Session.find_by_id(session[:user_id])
    return @current_user
  end
end

