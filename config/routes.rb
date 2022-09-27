Rails.application.routes.draw do
  resources :contacts
  root "contacts#index"
  get "/contacts", to: "contacts#index"
end

