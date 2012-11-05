class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to lessons_path, :notice => "Logged in!" 
    else
      redirect_to log_in_path, :notice => "Wrong password or email"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to lessons_path, :notice => "Logged out!"
  end


end
