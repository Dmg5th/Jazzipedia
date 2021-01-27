Rails.application.routes.draw do
  resources :eras, only: :index
  resources :artists, only: [:index, :destroy, :create]
 end
