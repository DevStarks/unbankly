Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#main"

  devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :users, only: [:index]

  resources :loans, only: [:index]
end
