Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'

  resources :profiles, only: [:show, :edit, :update] do
    resources :places, only: :create
  end

  resources :places, except: [:new, :index, :show, :create]

  resources :workshops
end
