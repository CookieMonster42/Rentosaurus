Rails.application.routes.draw do
  devise_for :users
  resources :dinosaurs, only: [:show] do
    resources :bookings, only: [:new, :create]
  end
  resources :dinosaurs
  root to: 'pages#home'
end
