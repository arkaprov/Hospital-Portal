Rails.application.routes.draw do
  # Root route for the login page
  root "sessions#new"

  # Routes for session management (login, logout)
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  # Receptionist namespace for managing patients
  namespace :receptionist do
    resources :patients, except: [:show]  # Generates all CRUD routes (index, show, new, create, edit, update, destroy)
    get 'dashboard', to: 'patients#index'  # Custom route for receptionist dashboard
  end

  # Doctor namespace for dashboard
  namespace :doctor do
    get "dashboard/index"
    get 'dashboard', to: 'dashboard#index'
  end

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check



  # PWA routes (if applicable in your project)
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
