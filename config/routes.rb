Rails.application.routes.draw do
  # Ruta para cerrar sesión (antes de devise_for)
  devise_scope :user do
    delete 'users/sign_out', to: 'devise/sessions#destroy'
  end

  # Rutas para usuarios
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  # Ruta para que la dueña acceda a cargar sus fotos
  resources :photos, only: [:new, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'home/index'
  get 'comments/create'
  get 'photos/index'
  get 'photos/new'
  get 'photos/create'
  get '/owner_home', to: 'owners#home', as: 'owner_home'

  # Defines the root path route ("/")
  root "home#index"
end
