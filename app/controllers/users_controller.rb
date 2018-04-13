class UsersController < ApplicationController
  def index
      @users = User.all
  end

  def new
      @user = User.new
  end

  def create
      User.create(user_params)
      redirect_to users_path
  end

  def show
      @user = User.find(params[:id])
  end

  def destroy
      User.delete(params[:id])
      redirect_to users_path
  end

  private

  def user_params
      params.require(:user).permit(:username, :email, :password)
  end
end
