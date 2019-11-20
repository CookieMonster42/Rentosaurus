Rails.application.routes.draw do
  devise_for :users
  resources :dinosaurs do
    resources :bookings, only: [:new, :create]
  end
  root to: 'pages#home'
end
