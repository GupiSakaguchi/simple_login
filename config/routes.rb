Rails.application.routes.draw do
  get "sign_in" => "user/sessions#new"
  get "sign_up" => "user/registrations#new"
  delete "sign_out" => "user/sessions#destroy"

  namespace :user do
    resources :registrations, only: :create
    resources :sessions, only: :crate
  end
end
