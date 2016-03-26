Rails.application.routes.draw do
  resources :jobby_jobs
  root 'jobby_jobs#index'
end
