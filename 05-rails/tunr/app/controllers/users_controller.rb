class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      # Here the user is valid
      redirect_to root_path
    else
      # Here the user is invalid
      redirect_to login_path
    end
  end

  def show
    @show = User.find params[:id]
  end

  def index
    @user = User.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end