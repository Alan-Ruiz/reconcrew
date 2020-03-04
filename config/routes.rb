Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  devise_for :users
  root to: 'pages#home'
  resources :locations do
    resources :bookings, only: %i[create index update] do
      resources :payments, only: :new
    end
    resources :reviews, only: %i[index create new]
  end
  resource :dashboard, only: [:show]

  get '/:username', to: 'pages#profile', as: 'profile'

  resources :chats, only: [:index, :create] do
     resources :messages, only: [:index, :create]
  end
end
