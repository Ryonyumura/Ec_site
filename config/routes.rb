# == Route Map
Rails.application.routes.draw do
  root to: "products#index"

  devise_for :users
  devise_for 'admins'

  resource  :basket, only: %i(show)
  resource :charge,  only: %i(create)

  resources :products, only: %i(show) do
    scope module: :products do
      resources :add_to_baskets, only: %i(create)
      resources :delete_in_baskets, only: %i(create)
    end
  end

  namespace :admin do
    root to: "dashbords#index"
    resources :products, only: %i(new create)
  end
end