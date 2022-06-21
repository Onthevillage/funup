Rails.application.routes.draw do
  devise_for :funs
  resources :value_creaters, only: [:new,:create]
  root "value_creaters#new"
end
