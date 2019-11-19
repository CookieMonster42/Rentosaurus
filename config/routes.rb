Rails.application.routes.draw do
  devise_for :users
  resources :dinosaurs, only: [:index, :new, :create, :destroy]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #              POST   /dinosaurs(.:format)          dinosaurs#create
  # new_dinosaur GET    /dinosaurs/new(.:format)      dinosaurs#new
end
