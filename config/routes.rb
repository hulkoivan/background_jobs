require "sidekiq/web"
require "sidekiq-scheduler/web"

Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  mount Sidekiq::Web => "/sidekiq"

  root "users#index"

  resources :users, only: %i[index create]
end
