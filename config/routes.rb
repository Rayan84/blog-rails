Rails.application.routes.draw do
  root 'users#index'
  post "sign_up", to: "users#create"
  resources :users, only: [:index, :show, :new, :create, :edit, :update] do
    resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  end
end