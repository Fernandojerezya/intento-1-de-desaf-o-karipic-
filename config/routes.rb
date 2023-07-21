Rails.application.routes.draw do

    # Devise routes
    devise_for :users

    # Ruta para cerrar sesión
    devise_scope :user do
      delete 'users/sign_out', to: 'devise/sessions#destroy'
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'home/index'
  get 'comments/create'
  get 'photos/index'
  get 'photos/new'
  get 'photos/create'

  # Defines the root path route ("/")
  root "home#index"
end

