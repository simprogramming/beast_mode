class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @languages = LearningLanguage.where(user: @user)
    @courses = TakingCourse.where(user: @user)
  end

  def edit
  end

  def update
  end
end
