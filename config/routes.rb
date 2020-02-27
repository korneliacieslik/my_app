Rails.application.routes.draw do 
  
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources  :opinions, :orders, :products

  root 'static_pages#home'
  
  get '/contact', to: 'static_pages#contact'
  get '/opinions', to: 'static_pages#opinions'

end


