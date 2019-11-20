Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # resources :users, only: [:show, :edit, :update, :destroy] do
    resources :dinosaurs, only: [:index, :new, :create, :destroy, :show, :edit, :update]
  # end
  get '/:id', to: 'pages#account', as: :account
  # get 'user/:id', to: 'users#show', as: :user
end
