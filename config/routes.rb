Rails.application.routes.draw do
  resources :patients
  namespace :departments do 
    resources :admissions
    resources :appointments
  end
  root "patients#index"
end