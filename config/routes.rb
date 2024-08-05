Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do  #this block was externally added to solve signout issues
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :friends
  get 'home/about'
  root 'home#index'

  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
