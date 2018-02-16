Rails.application.routes.draw do
  namespace :user do
    resources :registrations, only: [:new, :create]
  end
end
