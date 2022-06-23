Rails.application.routes.draw do
  devise_for :funs
  resources :value_creaters, only: [:index, :new, :create]
  root "value_creaters#index"
  resources :funs do
    resource :relationships, only: [:create, :show, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
end
