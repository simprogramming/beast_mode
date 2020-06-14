class CoursesController < ApplicationController
  before_action :find_course, only: [:edit, :update]

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

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
    # raise
    if @course.update(params.permit(:course))
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

  def course_params
    params.require(:course).permit(:name, :link, :language_id, :completed)
    # params.require(:course).permit(:completed)
  end
end
