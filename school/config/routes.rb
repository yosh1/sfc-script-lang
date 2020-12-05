Rails.application.routes.draw do
  get 'faculties/show'
  get 'faculties/:id' => 'faculties#show'

  get 'courses/show'
  get 'courses/:id' => 'courses#datail'

  resources :students
  resources :faculties, only: [ :show ]
  resources :courses, only: [ :show, :datail ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
