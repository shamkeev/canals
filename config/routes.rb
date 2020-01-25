Rails.application.routes.draw do
  get 'pages/home'
  devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  devise_for :users, :skip => [:registrations]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
  namespace :admin do
      resources :aiyl_aimaks
      resources :settlements
      resources :oblasts
      resources :layers
      resources :infra_projects
      resources :districts

      root to: "aiyl_aimaks#index"
    end
  resources :settlements, only: [:index, :show]
  resources :aiyl_aimaks, only: [:index, :show]
  resources :districts, only: [:index, :show]
  resources :oblasts, only: [:index, :show]
  resources :infra_projects, only: [:index, :show]

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
