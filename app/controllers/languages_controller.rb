class LanguagesController < ApplicationController
  before_action :find_language, only: [:show, :edit, :update]

  def index
    @languages = Language.all

    @user_learning_language = LearningLanguage.where(user: current_user)

    # @learning_languages = current_user.learning_languages

  end

  def show
    @courses = Course.where(language: params[:id])
    @user_courses = TakingCourse.where(user: current_user)

    @taking_course = TakingCourse.new
  end

  def new
    @language = Language.new
  end

  def create
    @language= Language.new(language_params)

    if @language.save
      flash.notice = "Language successfully created!"
      redirect_to languages_path
    else
    end
  end

  def edit
  end
  
  def update
    if @language.update(language_params)
      flash.notice = "Language successfully updated!"
      redirect_to languages_path
    else
      render :new
    end
  end
  
  private
  def find_language
    @language = Language.find(params[:id])
  end

  def language_params
    params.require(:language).permit(:name)
  end
end
