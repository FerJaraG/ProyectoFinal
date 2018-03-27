Rails.application.routes.draw do

  resources :campings do  
      get :home, on: :collection
      resources :campsites 
      resources :campservices
      resources :plans
      resources :bookings do
        get :prepayment, on: :member
      end
  end

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
      
  post 'campings/return_cities'

  post 'campings/return_communes'
  

  root 'campings#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
