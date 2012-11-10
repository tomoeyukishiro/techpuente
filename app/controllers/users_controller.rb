class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		#Mass Assigment Vunerble
		#checked_admin = params[:admin]
		@user = User.new(params[:user])
		puts params[:user]
		if @user.save
			redirect_to lessons_path, :notice => "Signed Up!"
		else
			render "new"
		end
	end 
end
