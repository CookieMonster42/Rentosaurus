Rails.application.routes.draw do
  devise_for :users
  resources :dinosaurs, only: [:index, :new, :create, :destroy, :show, :edit, :update]
  root to: 'pages#home'
end
