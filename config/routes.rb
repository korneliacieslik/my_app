Rails.application.routes.draw do 
  resources :customers, :opinionss, :orders, :products

  get 'opinions/index'
  get 'opinions/new'
  post'opinions/create'
  get 'opinions/destroy'
  get 'opinions/edit'
  post'opinions/update'
  
  root 'static_pages#home'
  
  get '/contact', to: 'static_pages#contact'
  get '/opinionss', to: 'static_pages#opinionss'
  get '/signup', to: 'customers#new'
end


