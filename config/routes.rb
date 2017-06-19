Rails.application.routes.draw do

  root 'main#index'
  get 'main/index'
  get 'sessions/new'

  get 'quests/show', to: 'quests#show'

  resources :sessions
  resources :tasks
  resources :quests
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
