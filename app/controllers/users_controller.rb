class UsersController < ApplicationController
  def new
    @user = User.new(user_params)
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.username
    if @user.save
      flash[:success] = "Welcome! You have successfully created an account!"
      redirect_to home_path
    else
      flash.now[:alert] = @user.errors.full_messages.to_sentence
      render 'new'
    end
  end

  private
  def user_params
	  params.permit(:username, :password, :password_confirmation)
  end
end
