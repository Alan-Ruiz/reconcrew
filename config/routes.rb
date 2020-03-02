Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :locations do
    resources :bookings, only: %i[create index update]
    resources :reviews, only: %i[index create new]
  end

  get 'dashboard' to: 'pages#dashboard'
end
