class SessionsController < ApplicationController

	def new
	end

	def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      login
      redirect_to user_path(@user)
    else
      render '/login'
    end
  end

  def destroy
    logout
    redirect_to '/login'
  end

end
