Rails.application.routes.draw do
  get 'opinion/index'
  get 'opinion/new'
  get 'opinion/create'
  get 'opinion/destroy'
  get 'opinion/edit'
  resources :orders
  resources :products
  resources :customers
  resources :opinions
  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/opinions', to: 'static_pages#opinions'
  get '/signup', to: 'customers#new'
end


