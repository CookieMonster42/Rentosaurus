Rails.application.routes.draw do
  devise_for :users
  resources :dinosaurs, only: [:index, :new, :create, :destroy]
  root to: 'pages#home'
end
