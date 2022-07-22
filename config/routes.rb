Rails.application.routes.draw do
  resources :results
  resources :answers
  resources :questions
  resources :quizzes
  resources :notices
  resources :timetables
  resources :syllabuses
  resources :contents
 
  resources :assingments do 
    resources :studentassingments
  end
  resources :studentprofiles  
  resources :profiles
  resources :createclasses
  resources :joins
  get 'main/index'
  get 'createclass/index'
  root 'home#index'
  devise_for :students
  devise_for :teachers
  get 'notice ', to: 'notices#unread'
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
