Rails.application.routes.draw do
  root 'main#index'
  get 'main/index'

  resources :tasks
  resources :quests
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
