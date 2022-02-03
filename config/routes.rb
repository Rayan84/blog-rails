Rails.application.routes.draw do
  root 'users#index'
  get 'users/index'
  get 'users/show'

  resource :users, only: %i[index show] do
    resource :posts, only: %i[index show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
