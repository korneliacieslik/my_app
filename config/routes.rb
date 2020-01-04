Rails.application.routes.draw do
  resources :orders
  resources :products
  resources :customers
  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/opinions', to: 'static_pages#opinions'
end


