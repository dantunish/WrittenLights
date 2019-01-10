class CoursesController < ApplicationController
  def create
    @course = Course.new(allowed_params)
    if @course.save
      redirect_to @course, alert: "course created successfully."
    else
      redirect_to new_courses_path, alert: "Error creating course."
    end
  end

  def new
    @course = Course.new
  end

  def allowed_params
    params.require(:course).permit(:name, :hours)
  end  

  def index
    @courses = Course.all
  end

  def show
    @courses = Course.find(params[:id])
  end
end
