Rails.application.routes.draw do
  get 'tires/index'

  get 'static_pages/welcome'

  resources :brands
  root 'static_pages#welcome'
end
