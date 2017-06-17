Rails.application.routes.draw do
  devise_for :users
  devise_for :owners, :controllers => { registrations: 'registrations' }

  root "welcome#index"

  resources :restaurants do
    resources :reservations
  end

  get "owners/:id/dashboard", to: "owners#dashboard", as: "owner_dashboard_path"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
