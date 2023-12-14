Rails.application.routes.draw do
  resources :products
  root "products#index"

  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :create, :destroy]
    end
  end
end