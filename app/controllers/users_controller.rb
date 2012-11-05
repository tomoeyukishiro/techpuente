class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to root_url, :notive => "Signed In!"
		else
			render "new"
		end
	end 
end
