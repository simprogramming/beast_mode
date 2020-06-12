class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  def show
  end

  def edit
  end

  def update
    if @user.update
      flash.notice = "Profile successfully updated!"
      redirect_to user_path(@user)
    else
    end
  end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
