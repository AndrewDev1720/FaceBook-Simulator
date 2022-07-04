class ApplicationController < ActionController::Base
  helper_method(:current_user, :logged_in?)
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

   

  protected def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password)}

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :current_password, :avatar)}
  end
  # def current_user()
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end
  def after_update_path_for(resource)
    redirect_to user_path(@user)
  end

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
