Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :dinosaurs
  resources :dinosaurs do
    resources :bookings, only: [:new, :create, :index]
  end
  get '/:id', to: 'pages#account', as: :account
  post '/:id', to: 'pages#update'
end
