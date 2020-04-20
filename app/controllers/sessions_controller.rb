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
   	redirect_to home_path, notice: "Welcome #{user.username}, you successfully signed in."
   else
   	puts "User ID and/or Password invalid."
   	render "new", alert:
   	"User ID and/or Password invalid."
   end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to home_path
  end

end
