Rails.application.routes.draw do 
  
  resources :cart_items
  devise_for :users, controllers: { registrations: 'users/registrations',  omniauth_callbacks: 'users/omniauth_callbacks'  }
  
  resources  :opinions, :products 

  root 'static_pages#home'
  
  get '/contact', to: 'static_pages#contact'
  get '/opinions', to: 'static_pages#opinions'

end


