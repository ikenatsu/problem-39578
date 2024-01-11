Rails.application.routes.draw do
  devise_for :users
  get 'problems/index'
  root to: "problems#index"
end
