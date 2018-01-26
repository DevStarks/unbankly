Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#main"

  # authentication routes
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions',
  #   omniauth_callbacks: 'users/omniauth_callbacks'
  # }

  resources :users, only: [:index]

  resources :loans, only: [:index]
end
