Rails.application.routes.draw do
  
  # devise_for :users,
  #            controllers: {
  #               #  sessions: 'users/sessions',
  #                registrations: 'users/registrations'
  #            }


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :v1, defaults: { format: :json } do
    resources :most_recent, only: [:index]
    resources :users do
      resources :hotels, only: [:index, :create, :destroy]
      resources :reservations, only: [:index, :create, :destroy]
    end
    # resources :users
        post '/auth/login', to: 'authentication#login'
        delete '/auth/logout', to: 'authentication#logout'
        get '/*a', to: 'application#not_found'
        
    #     devise_for :users
    #  devise_scope :user do
    # get '/users/sign_out' => 'devise/sessions#destroy'
    # end
  end

end
