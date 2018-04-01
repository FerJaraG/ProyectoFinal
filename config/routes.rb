Rails.application.routes.draw do

  resources :campings do  
      get :home, on: :collection
      get :my_campings, on: :collection
      get :admin_camp, on: :member
      resources :campsites
      resources :campservices
      resources :plans
      resources :bookings do
        get :prepayment, on: :member
        resources :reviews
      end
  end

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

  resources :users, only: [] do 
    get 'user_bookings', to: 'bookings#user_bookings'
  end

  resources :billings, only: [] do
    collection do
      get 'pre_pay'
      get 'execute'
    end
  end
      
  get 'regions', to: 'regions#new'
  get 'cities', to: 'cities#new'
  get 'communes', to: 'communes#new'

  root 'campings#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
