class UsersController < ApplicationController
	before_filter :authenticate_user!
	
	def show
		@user = User.find(params[:id])
		# @user = User.find(params[:username])
	end

	def index
	end
end