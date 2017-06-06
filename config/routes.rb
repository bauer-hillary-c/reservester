Rails.application.routes.draw do
  devise_for :owners, :controllers => { registrations: 'registrations' }
  root "welcome#index"
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
