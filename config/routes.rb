Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :dinosaurs
  resources :dinosaurs do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy, :index, :edit, :update]
  
  get "/:id", to: 'pages#account', as: :account
  # get '/:id', to: 'pages#account', as: :account
  post '/:id', to: 'pages#update'
end
