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
      
  get 'regions', to: 'regions#new'
  get 'cities', to: 'cities#new'
  get 'communes', to: 'communes#new'

  root 'campings#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
