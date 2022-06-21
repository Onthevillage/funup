Rails.application.routes.draw do
  devise_for :funs
  resources :value_creaters, only: [:index]
  root "value_creaters#index"
end
