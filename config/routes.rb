PplInstallationPlanning::Application.routes.draw do
  root :to => "home#index"

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  devise_scope :user do
    get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
    get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end


  resources :installations
  match '/installations/move' => 'installations#move'
  match '/installations/resize' => 'installations#resize'
  match '/installations/drop' => 'installations#drop'

  resources :projects
  resources :teams
end
