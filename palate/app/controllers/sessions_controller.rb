class SessionsController < ApplicationController

	def new
	end

	def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
			flash.keep[:notice] = "Successfully logged in."
      redirect_to user_path(@user)
    else
      render '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
