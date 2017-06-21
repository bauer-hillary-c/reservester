Rails.application.routes.draw do
  devise_for :users
  devise_for :owners, :controllers => { registrations: 'registrations' }

  root "welcome#index"

  resources :restaurants do
    resources :reservations
  end

  resources :restaurants do
    put :favorite, on: :member
  end

  get "owners/:owner_id/dashboard", to: "owners#dashboard", as: "owner_dashboard"
  get "users/:user_id/dashboard", to: "users#dashboard", as: "user_dashboard"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
