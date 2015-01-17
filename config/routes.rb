Rails.application.routes.draw do
  resources :cases

  root "cases#index"
end
