Rails.application.routes.draw do

  resources :brands
  resources :tires
  resources :walls

  get 'static_pages/welcome'

  root 'static_pages#welcome'
end
