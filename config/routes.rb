Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  devise_for :users
  root to: 'pages#home'
  resources :locations do
    # TODO: Remove #new action when Booking widget is available
    resources :bookings, only: %i[create new] do
      resources :payments, only: :new
    end
    resources :reviews, only: %i[index create new]
    resources :availabilities, only: :index, controller: 'locations/availabilities'
  end
  resource :dashboard, only: [:show]

  resources :chats, only: [:index, :create] do
     resources :messages, only: [:index, :create]
  end

  resources :bookings, only: :update
end
