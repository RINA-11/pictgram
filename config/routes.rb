Rails.application.routes.draw do
  get 'sessions/new'
  root "pages#index"
  get "pages/link"
  get "pages/help"
  get "pages/index"
  
  resources:users
  
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
