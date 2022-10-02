Rails.application.routes.draw do
  root to: "products#show"
  resources :custom_products
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
