Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to:"incidents#index"
  resources :incidents, only: :index
end
