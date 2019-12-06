Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'dashboards#show', as: 'dashboard'
  resources :cars, only: %i[index show new create] do
    resources :booking, only: [:new, :create]
    resources :review, only: [:new, :create,]
  end
  resources :booking, only: [:show] do
    member do
      patch "/accept", to: "booking#accept"
      patch "/reject", to: "booking#reject"
      patch "/cancel", to: "booking#cancel"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
