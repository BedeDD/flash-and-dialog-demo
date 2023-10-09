Rails.application.routes.draw do
  get 'pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  match 'pages/show_error', via: %i[get put post]
  match 'pages/show_info', via: %i[get put post]
  match 'pages/show_success', via: %i[get put post]
  match 'pages/show_warning', via: %i[get put post]
  match 'pages/show_dialog', via: %i[get put post], as: :show_dialog

  root 'pages#index'
end
