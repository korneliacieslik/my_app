Rails.application.routes.draw do 
  resources :customers, :opinions, :orders, :products

  get 'opinions/index'
  get 'opinions/new'
  post'opinions/create'
  get 'opinions/destroy'
  get 'opinions/edit'
  post'opinions/update'
  
  root 'static_pages#home'
  
  get '/contact', to: 'static_pages#contact'
  get '/opinions', to: 'static_pages#opinions'
  get '/signup', to: 'customers#new'

end


