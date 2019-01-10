class StudentsController < ApplicationController
  def create
    @student = Student.new(allowed_params)
      if @student.save
        redirect_to @student, alert: "Student created successfully."
      else
        redirect_to new_courses_path, alert: "Error creating student."
      end
  end

  def new
    @student = Student.new
  end

  def allowed_params
    params.require(:student).permit(:first_name, :last_name, :age, :education)
  end  

  def index
    @students = Student.all
  end

  def show
    @students = Student.find(params[:id])
  end
end
