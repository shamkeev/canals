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
  resources :settlements
  resources :aiyl_aimaks
  resources :districts
  resources :oblasts
  resources :layers
  resources :infra_projects

  root to: 'infra_projects#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
