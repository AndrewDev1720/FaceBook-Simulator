class UsersController < ApplicationController
  before_action(:getUser, only: [:show, :edit, :update])

  def show
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to Alpha Blog #{@user.username}, you have successfully signed up!" 
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Congrats #{@user.username}, you have successfully updated your information!" 
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def edit
  end

  private def user_params()
    params.require(:user).permit(:username, :email, :password)
  end

  private def getUser()
    @user = User.find(params[:id])
  end

end