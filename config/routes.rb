Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :menus
  resources :dishes
  resources :sections
  get 'pages/contact', to: 'pages#contact'
  get 'pages/bnb', to: 'pages#bnb'
  root to: 'pages#home'
end
