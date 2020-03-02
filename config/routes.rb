Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :owners do
    resources :tractors, only: [:index]
    resources :bookings, only: [:index] do
      member do
        patch 'accept'
        patch 'refuse'
      end
    end
  end

  resources :tractors, only: [:index, :show, :new, :create]
  resources :bookings, only: [:index, :new, :create]
end
