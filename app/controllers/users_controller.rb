class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new user_params
    is_subscribed = false
    if @user.save
      is_subscribed = true
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email)
    end


end
