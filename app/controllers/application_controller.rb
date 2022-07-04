class ApplicationController < ActionController::Base
  helper_method(:current_user, :logged_in?)
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

   

  protected def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password)}

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :current_password)}
  end
  # def current_user()
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end

  def logged_in?()
    !!current_user()
  end

  def require_user()
    if !logged_in?()
      flash[:alert] = "You must log in first"
      redirect_to login_path
    end
  end

end
