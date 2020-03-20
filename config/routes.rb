Rails.application.routes.draw do 
  
  devise_for :users, controllers: { registrations: 'users/registrations',  omniauth_callbacks: 'users/omniauth_callbacks'  }
  
  # devise_scope :user do
  #  delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end
  
  resources  :opinions, :orders, :products

  root 'static_pages#home'
  
  get '/contact', to: 'static_pages#contact'
  get '/opinions', to: 'static_pages#opinions'

end


