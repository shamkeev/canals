Rails.application.routes.draw do
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

  root to: 'infra_projects#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
