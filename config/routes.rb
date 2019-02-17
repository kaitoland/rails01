Rails.application.routes.draw do
  resources :topics
  resources :creators
  resources :hm_reviews
  root to:'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
