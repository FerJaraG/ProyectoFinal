Rails.application.routes.draw do
  get 'campings/index'

  get 'campings/search'

  get 'campings/show'

  get 'campings/new'

  post 'campings', to: 'campings#create'

  post 'campings/return_cities'

  post 'campings/return_communes'

  



  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

root 'campings#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
