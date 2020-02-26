Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'

  get 'search', to: 'pages#search'

  resources :profiles, only: [:show, :edit, :update] do
    resources :places, only: :create
  end

  resources :places, except: [:new, :index, :show, :create]

  resources :workshops do
    resources :workshop_dates, only: [:new, :create]
    resources :bookings, only: :create
    resources :reviews, only: :create
  end

  resources :workshop_dates, only: :destroy
  resources :bookings, only: :destroy
  resources :reviews, except: [:index, :show, :new, :destroy]
end
