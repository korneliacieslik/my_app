Rails.application.routes.draw do 
  
  resources :customers, :opinions, :orders, :products

  root 'static_pages#home'
  
  get '/contact', to: 'static_pages#contact'
  get '/opinions', to: 'static_pages#opinions'
  get '/signup', to: 'customers#new'

end


