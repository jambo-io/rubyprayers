Rails.application.routes.draw do
  resources :reports
  devise_for :users
  resources :prayers
  resources :categories
  resources :requests do
    get 'reply_request'
    get 'authorize'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'requests#index'
  
end
