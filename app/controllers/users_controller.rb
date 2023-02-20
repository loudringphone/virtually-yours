class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def newsletter
    @user = User.new(user_params)
    if @user.save
      render :new
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
    params.require(:user).permit(:first_name, :last_name, :email, :subscription)
  end


end
