Rails.application.routes.draw do
  get 'users/new'
  get "pages/link"
  get "pages/help"
  get 'pages/index'
  root "pages#index"
  resources:users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
