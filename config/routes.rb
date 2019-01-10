Rails.application.routes.draw do
  resources :cohorts
  resources :courses
  resources :instructors
  resources :students
  root 'welcomes#index'

end

 