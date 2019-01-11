Rails.application.routes.draw do
  #root to: 'pages#new'

  constraints Clearance::Constraints::SignedOut.new do
    root to: 'pages#index'
  end

  constraints Clearance::Constraints::SignedIn.new do
    root to: 'pages#new', as: :signed_in_root
    resources :cohorts
    resources :courses
    resources :instructors
    resources :students
    resources :pages, only: :new
  end
end

