	Rails.application.routes.draw do

  root 'main#index'
  get 'main/index'
  get 'sessions/new'

  get 'quests/show', to: 'quests#show'

  delete 'logout' => 'sessions#destroy'
  get 'logout' => 'sessions#destroy'
	get 'users/invite'

  resources :sessions
  resources :quests do
		resources :tasks
  end
  resources :users
		
end
