Rails.application.routes.draw do
  resources :challenges
  resources :financial_states
  resources :deuda_users
  resources :social_causes
  resources :users
  root "users#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
