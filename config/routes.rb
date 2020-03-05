Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  devise_for :users
  root to: 'pages#home'
  resources :locations do
    # TODO: Remove #new action when Booking widget is available
    resources :bookings, only: %i[create new] do
      resources :payments, only: :new
      get 'confirmation', to: 'bookings#confirmation'
      # resources :reviews, only: %i[index create new]
    end
    resources :availabilities, only: :index, controller: 'locations/availabilities'
  end
  resource :dashboard, only: [:show]


  resources :chats, only: [:index, :show, :create] do
     resources :messages, only: [:index, :create]
  end

  resources :bookings, only: :update do
    resources :reviews, only: [:new, :create]
  end

  get '/:username', to: 'pages#profile', as: 'profile'

   # Sidekiq Web UI, only for admins.
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
