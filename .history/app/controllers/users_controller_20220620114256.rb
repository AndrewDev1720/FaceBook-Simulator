class UsersController < ApplicationController
  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to Alpha Blog, you have successfully signed up!" 
      redirect_to articles_path
    else
      render new
  end
end