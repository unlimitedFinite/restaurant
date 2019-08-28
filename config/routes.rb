Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  delete 'menus/:menu_id/sections/:section_id/dishes/:id/remove', to: 'sections#remove', as: :remove_dish
  patch 'menus/:menu_id/sections/:section_id/dishes/:id/up', to: 'dishes#up', as: :up_dish
  patch 'menus/:menu_id/sections/:section_id/dishes/:id/down', to: 'dishes#down', as: :down_dish
  get 'menus/:menu_id/sections/:section_id/edit_name', to: 'sections#edit_name', as: :edit_name
  patch 'menus/:menu_id/sections/:section_id/edit_name', to: 'sections#update_name', as: :update_name
  resources :menus do
    resources :sections do
      resources :dishes
    end
  end
  get 'pages/contact', to: 'pages#contact'
  get 'pages/bnb', to: 'pages#bnb'
  root to: 'pages#home'
end
