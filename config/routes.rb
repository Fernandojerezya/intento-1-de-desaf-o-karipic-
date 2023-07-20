Rails.application.routes.draw do
  get 'comments/create'
  get 'photos/index'
  get 'photos/new'
  get 'photos/create'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
