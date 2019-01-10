class WelcomesController < ApplicationController
  before_action :require_login, only: [:new]
  layout "_navigation"
  def index
  end

  def new 
  end

end
