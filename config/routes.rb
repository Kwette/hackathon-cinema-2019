Rails.application.routes.draw do
  get 'message/new'
  get 'message/create'
  get 'message/index'
  resources :talks do
    resources :messages, only: [:create, :new, :index]
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
