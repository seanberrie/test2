Rails.application.routes.draw do
  root 'widgets#index'
  resources :widgets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
