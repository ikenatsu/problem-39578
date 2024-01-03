Rails.application.routes.draw do
  get 'problems/index'
  root to: "problems#index"
end
