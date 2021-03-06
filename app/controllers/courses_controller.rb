class CoursesController < ApplicationController
  before_action :find_course, only: [:edit, :update]

  def new
    @course = Course.new
    @languages_names = Language.all.map { |language| language.name }
  end

  def create
    language = Language.find_by(name: params[:course][:language])
    @course = Course.new(name: params[:course][:name], link: params[:course][:link], language: language)
    
    if @course.save
      flash.notice = "Course successfully created!"
      redirect_to languages_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @course.update(taking_course_params)
      flash.notice = "Course successfully updated!"
      redirect_to languages_path
    else
      render :edit
    end
  end

  private
  def find_course
    @course = TakingCourse.find_by(course_id: params[:id])
  end

  # def course_params
  #   params.require(:course).permit(:name, :link, :language_id)
  # end

  def taking_course_params
    params.require(:taking_course).permit(:completed)
  end
end
