Rails.application.routes.draw do
  resources :responses
  resources :topics
  resources :creators
  resources :hm_reviews
  root to:'home#index'
  post 'responses/create' => 'responses#create', as: :response_create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
