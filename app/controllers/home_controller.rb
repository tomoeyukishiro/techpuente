class HomeController < ApplicationController
	def new
	end

  def index
  end

  def about
  end

	def create  
		user = User.find_by_email(params[:email])  
		if user && user.authenticate(params[:password])  
	   	session[:user_id] = user.id  
	   	redirect_to root_url, flash[:notice] = "Your logged in!"   
	 	else
			flash[:notice] = "Wrong Password or Email"    
		 	redirect_to "/"
  	end  
  end  
  
  def destroy  
    session[:user_id] = nil  
    redirect_to root_url, flash[:notice] = "You logged out!"  
  end
  
end
