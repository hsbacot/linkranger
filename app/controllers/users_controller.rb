class UsersController < ApplicationController
	before_filter :authenticate_user!
	
	def show
		@user = User.find_by_permalink(params[:id])
	end

	def index
	end
end