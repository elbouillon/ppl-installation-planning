PplInstallationPlanning::Application.routes.draw do
  root :to => "sessions#register"
  resources :users, :only => [:index, :show, :edit, :update ]
  match '/auth/:provider/callback' => 'sessions#create'
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
  match '/auth/failure' => 'sessions#failure'

  match '/home' => 'home#index'

  resources :installations, only: [:index]
  match '/installations/move' => 'installations#move'
  match '/installations/resize' => 'installations#resize'
  match '/installations/drop' => 'installations#drop'
end
