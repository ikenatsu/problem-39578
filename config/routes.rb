Rails.application.routes.draw do
  devise_for :users
  get 'problems/index'
  root to: "problems#index"
  resources :users, only: [:edit, :update]
end
