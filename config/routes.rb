Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :ads do
    resources :bows, :arrows, :bow_accessories, only: [:new, :create, :edit, :update]
    # resources :arrows, only: [:new, :create, :edit, :update]
    # resources :arc_accessories, only: [:new, :create, :edit, :update]
  end

  resources :bows, :arrows, :bow_accessories, only: [:destroy]

  get "my_account", to: "my_accounts#show", as: :my_account
end
