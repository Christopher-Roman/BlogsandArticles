class SessionsController < ApplicationController
  
  def index
  	redirect_to home_path
  end


  def new
  end

  def create
   user = User.find_by username: params[:username]
   if user && user.authenticate(params[:password])
   	session[:user_id] = user.username
    flash[:notice] = "Welcome, you successfully signed in."
   	redirect_to home_path
   else
   	puts "User ID and/or Password invalid."
    flash.now[:alert] = "User ID and/or Password invalid."
   	render "new"
   end
  end

  def destroy
  	session[:user_id] = nil
    flash[:notice] = "You have logged out successfully."
  	redirect_to home_path
  end

end
