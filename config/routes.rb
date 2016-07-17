Rails.application.routes.draw do
  root "gifs#index"
  resources :gifs, only: [:index, :new, :create] do
    resources :votes, only: [:create]
  end
end
