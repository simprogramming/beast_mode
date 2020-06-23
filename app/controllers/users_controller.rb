class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    
    @languages = LearningLanguage.where(user: @user)
    @currently_learning_languages = @languages.select { |learning_language| learning_language.currently_learning == true }

    @courses = TakingCourse.where(user: @user)
    @currently_taking_courses = @courses.select { |taking_course| taking_course.currently_taking == true }
  end

  def edit
  end

  def update
  end
end
