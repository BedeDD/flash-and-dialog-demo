Rails.application.routes.draw do
  get 'pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  post 'pages/show_error'
  post 'pages/show_info'
  post 'pages/show_success'
  post 'pages/show_warning'
  post 'pages/show_dialog', as: :show_dialog
  get 'pages/static_flash'

  root 'pages#index'
end
