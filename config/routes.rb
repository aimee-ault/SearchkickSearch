Rails.application.routes.draw do
  resources :movies, only: [:index]
end
