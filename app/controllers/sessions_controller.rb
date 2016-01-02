class SessionsController < ApplicationController
  def new
  end

<<<<<<< 8baf3ffff4fbca3636d09c183622e37f4d74b0a7
	def create
		user = User.find_by(username: params[:username])
		if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :root
    else
      render :new
    end
	end

	def destroy
		session[:user_id] = nil
		redirect_to new_session_path
	end
=======
  def create
    user = User.new(username: params[:username], password: params[:password])
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to new_user_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_user_path
  end
>>>>>>> tweak sessions controller
end
