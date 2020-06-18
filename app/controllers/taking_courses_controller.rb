class TakingCoursesController < ApplicationController
  before_action :find_taking_course, only: [:edit, :update]

  def edit
  end

  def update
    # if @taking_course.update(params[:taking_course])
    if @taking_course.update(taking_course_params)
      flash.notice = "Course successfully updated"
      redirect_to language_path(@taking_course.course.language)
    else
      flash.notice = "Something went wrong, please try again"
      render :edit
    end
  end

  private
  def find_taking_course
    @taking_course = TakingCourse.find(params[:id])
  end

  def taking_course_params
    params.require(:taking_course).permit(:completed)
  end

  def true?(obj)
    obj.to_s.downcase == "true"
  end
end
