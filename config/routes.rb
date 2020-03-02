Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  mount StripeEvent::Engine, at: 'https://jeudemains.herokuapp.com/stripe-webhooks'

  root to: 'pages#home'

  get 'search', to: 'pages#search'

  resources :profiles, only: [:show, :edit, :update] do
    resources :places, only: :create
    get 'public'
  end

  resources :places, except: [:new, :index, :create]

  resources :workshops do
    resources :workshop_dates, only: [:new, :create]
    resources :bookings, only: :create
    resources :reviews, only: [:new, :create]
  end

  resources :workshop_dates, only: :destroy do
    get 'search-places'
  end

  resources :bookings, only: :destroy do
    resources :payments, only: :new
  end

  resources :reviews, except: [:index, :show, :new, :destroy]
end
