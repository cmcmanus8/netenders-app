Rails.application.routes.draw do
  root 'welcome#index'
  resources :custom_products
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
