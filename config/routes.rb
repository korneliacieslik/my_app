Rails.application.routes.draw do 
  
  resources :line_items
  resources :carts
  devise_for :users, controllers: { registrations: 'users/registrations',  omniauth_callbacks: 'users/omniauth_callbacks'  }
  
  resources  :opinions, :orders, :products 

  root 'static_pages#home'
  
  get '/contact', to: 'static_pages#contact'
  get '/opinions', to: 'static_pages#opinions'

end


