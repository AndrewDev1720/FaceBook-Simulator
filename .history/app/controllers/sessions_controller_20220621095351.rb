class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id 
      flash[:notice] = "Logged Succesfully"
      redirect_to user_path(user.id)
    else
      flash.now()[:alert] = "Incorrect Username or Password"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] =  
  end
end