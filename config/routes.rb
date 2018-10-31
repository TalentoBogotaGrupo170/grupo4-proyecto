Rails.application.routes.draw do
  devise_for :users
  resources :users
  devise_for :teachers
  get 'home/index'
  root 'home#index'
  resources :guardians
  resources :reports
  resources :students
  resources :teachers
  resources :grades
  resources :institutes
  resources :districts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
