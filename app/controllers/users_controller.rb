class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :password)) 
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to '/newsfeed'
    else
      render "new"
    end
   
  end
end
