Rails.application.routes.draw do
  get 'message/new'
  get 'message/create'
  get 'message/index'
  resources :talks do
    resources :messages, only: [:create, :new, :index]
  end
  devise_for :users
  root to: 'pages#home'
  patch 'booking', to: 'talks#booking', as: :booking
  get 'booking_list', to: 'talks#bookingList', as: :booking_list
  patch 'booking_refuse', to: 'talks#bookingRefuse', as: :booking_refuse
  patch 'booking_accept', to: 'talks#bookingAccept', as: :booking_accept
  get 'booking_accept_list', to: 'talks#bookingAcceptList', as: :booking_accept_list
  get 'booking_refused_list', to: 'talks#bookingRefusedList', as: :booking_refused_list
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end