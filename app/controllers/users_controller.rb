class UsersController < ApplicationController
  def new
    @user = User.new(user_params)
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.username
    redirect_to home_path
  end

  private
  def user_params
	params.permit(:username, :password)
  end
end
