Rails.application.routes.draw do
  get 'cohorts/create'
  get 'cohorts/new'
  get 'courses/create'
  get 'courses/new'
  get 'instructors/create'
  get 'instructors/new'
  resources :students
  root 'welcomes#index'

end

 