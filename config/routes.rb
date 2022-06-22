Rails.application.routes.draw do
  devise_for :funs
  resources :value_creaters, only: [:index, :new, :create]
  root "value_creaters#index"
end
