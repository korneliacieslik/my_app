Rails.application.routes.draw do 
  resources :customers, :opinions, :orders, :products

  get 'opinion/index'
  get 'opinion/new'
  post'opinion/create'
  get 'opinion/destroy'
  get 'opinion/edit'
  post'opinion/update'
  
  root 'static_pages#home'
  
  get '/contact', to: 'static_pages#contact'
  get '/opinions', to: 'static_pages#opinions'
  get '/signup', to: 'customers#new'
end


