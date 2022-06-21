class ApplicationController < ActionController::Base
  helper_method(:current_user, :logged_in?)
  def current_user()
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def requre_user()
    if !logged_in?()
      flash[:alert] = "You must log in first"
    end
  end

end
