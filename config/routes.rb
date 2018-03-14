Rails.application.routes.draw do
  get 'campings/index'

  get 'campings/search'

  get 'campings/show'

  get 'campings/new'

  post 'campings', to: 'campings#create'

  root 'campings#index'

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
