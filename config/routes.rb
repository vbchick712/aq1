	Rails.application.routes.draw do

  root 'main#index'
  get 'main/index'
  get 'sessions/new'

  get 'quests/show', to: 'quests#show'

  delete 'logout' => 'sessions#destroy'
  get 'logout' => 'sessions#destroy'
	get 'users/invite'

  resources :sessions
  resources :tasks
  resources :quests
  resources :users
	resources :invites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
