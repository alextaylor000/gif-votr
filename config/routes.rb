Rails.application.routes.draw do
  root "gifs#index"
  resources :gifs, only: [:index, :new, :create]
end
