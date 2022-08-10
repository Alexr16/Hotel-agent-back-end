Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :v1, defaults: { format: :json } do
    resources :users, only: [:index] do
      resources :hotels, only: [:index, :show, :create]
      resources :reservations, only: [:index, :show, :create, :delete]
    end
  end

end
