Rails.application.routes.draw do
  resources :products
  resources :customers
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/contact'
end


