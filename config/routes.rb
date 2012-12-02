PplInstallationPlanning::Application.routes.draw do
  get "teams/index"

  get "teams/new"

  get "teams/edit"

  get "teams/create"

  get "projects/index"

  get "projects/create"

  root :to => "sessions#register"
  resources :users, :only => [:index, :show, :edit, :update ]
  match '/auth/:provider/callback' => 'sessions#create'
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
  match '/auth/failure' => 'sessions#failure'

  match '/home' => 'home#index', as: :home

  resources :installations, only: [:index, :create]
  match '/installations/move' => 'installations#move'
  match '/installations/resize' => 'installations#resize'
  match '/installations/drop' => 'installations#drop'

  resources :projects, only: [:index, :create]
  resources :teams, only: [:index, :create]
end
