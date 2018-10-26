Rails.application.routes.draw do
  resources :guardians
  resources :reports
  resources :students
  resources :teachers
  resources :grades
  resources :institutes
  resources :districts
  resources :institues
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
