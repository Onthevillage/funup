Rails.application.routes.draw do
  devise_for :funs
  resources :value_creaters, only: [:index, :new, :create, :show]
  root "value_creaters#index"
  resources :value_creaters do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
end
