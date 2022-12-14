class UserSessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    byebug
    @user = login(params[:username], params[:password])

    if @user
      redirect_back_or_to(:users, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new', status: :unprocessable_entity 
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: 'Logged out!')
  end
end
