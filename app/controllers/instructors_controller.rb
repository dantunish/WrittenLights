class InstructorsController < ApplicationController
  def create
    @instructor = Instructor.new(allowed_params)
    if @instructor.save
      redirect_to @instructor, alert: "instructor created successfully."
    else
      redirect_to new_instructors_path, alert: "Error creating instructor."
    end
  end

  def new
    @instructor = Instructor.new
  end

  def allowed_params
    params.require(:instructor).permit(:first_name, :last_name, :age, :salary, :education)
  end  

  def index
    @instructors = Instructor.all
  end

  def show
    @instructors = Instructor.find(params[:id])
  end
end
