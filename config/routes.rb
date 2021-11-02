Rails.application.routes.draw do
  resources :squads
  root to: 'pages#home'
  devise_for :users
end
