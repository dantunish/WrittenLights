class CohortsController < ApplicationController
  def create
    @cohort = Cohort.new(allowed_params)
    if @cohort.save
      redirect_to @cohort, alert: "cohort created successfully."
    else
      redirect_to new_cohorts_path, alert: "Error creating cohort."
    end
  end

  def new
    @cohort = Cohort.new
  end

  def allowed_params
    params.require(:cohort).permit(:name, :start, :end, :course, :instructor, :student)
  end  

  def index
    @cohorts = Cohort.all
  end

  def show
    @cohorts = Cohort.find(params[:id])
  end
end
