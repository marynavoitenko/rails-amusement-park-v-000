Rails.application.routes.draw do
  root 'welcome#home'

  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :attractions, only: [:index, :show, :new, :create]
  resources :rides, only: [:create]

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

end
