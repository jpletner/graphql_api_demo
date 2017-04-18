Rails.application.routes.draw do
  resources :graphql, only: :create
end
