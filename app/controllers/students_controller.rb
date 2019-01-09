class StudentsController < ApplicationController
  def create
    @student = Student.new(allowed_params)
    if @student.save
      redirect_to new_student_path
    end
  end

  def new
    @student = Student.new
  end

  def allowed_params
    params.require(:student).permit(:first_name, :last_name, :age, :education)
  end  
end
