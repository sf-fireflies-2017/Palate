class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user
		else
			render :new
		end
	end

	def show
<<<<<<< HEAD
		@user = User.find(params[:id])
	end
=======
		@user = User.find(params[:id]) 		
	end 
>>>>>>> 0f806e68899de19a9a5bed25f4c758b14ee7d0b0

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
	end

end
