Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  get "home/index"
  root to: "home#index"
  authenticate :admin do
    resources :social_causes
    resources :deuda_users
  end
  resource :cart, only: [:show, :update]
end
