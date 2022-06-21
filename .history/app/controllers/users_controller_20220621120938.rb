class UsersController < ApplicationController
  before_action(:getUser, only: [:show, :edit, :update])
  before_action(:check_owner, only: [:edit, :update, :destroy])
  def show
    @articles = @user.articles.paginate(page: params[:page], per_page: 5)
  end

  def new
    @user = User.new()
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = You do not have access to that directory
    else
      render 'new'
    end
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Congrats #{@user.username}, you have successfully updated your information!" 
      redirect_to user_path(@user)
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

  private def check_owner()
    if !(current_user.id == @user.id)
      flash[:alert] = "You do not have access to that directory"
      redirect_to user_path(@user.id)
    end
  end

end