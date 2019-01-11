class CohortsController < ApplicationController
  def create
    @cohort = Cohort.new(allowed_params)
    if @cohort.save
      redirect_to @cohort, alert: "cohort created successfully."
    else
      redirect_to new_cohort_path, alert: "Error creating cohort."
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
    $one = Course.all.collect
   # @two = Cohort.merge(@one)

#recent_posts = Post.order('created_at DESC').first(5)
#Post.where(published: true).merge(recent_posts)
# Returns the intersection of all published posts with the 5 most recently created posts.
# (This is just an example. You'd probably want to do this with a single query!)
  end

  def show
    @cohorts = Cohort.find(params[:id])
  end
end
