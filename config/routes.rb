Rails.application.routes.draw do
  root to:"incidents#index"
  resources :incidents, only: :index
end
