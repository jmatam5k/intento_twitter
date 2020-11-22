Rails.application.routes.draw do
  resources :tweeeets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tweeeets#index"
end
