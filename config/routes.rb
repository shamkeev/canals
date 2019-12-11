Rails.application.routes.draw do
  resources :settlements
  resources :aiyl_aimaks
  resources :districts
  resources :oblasts
  resources :layers
  resources :infra_projects

  root to: 'infra_projects#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
