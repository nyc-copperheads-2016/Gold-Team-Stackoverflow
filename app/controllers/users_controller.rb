class UsersController < ApplicationController

  def new
    @new_user = User.new
  end

  def create
    @new_user = User.new(user_params)
    if @new_user.save
      session[:user_id] = @new_user.id
      redirect_to :root
    else
      render new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
