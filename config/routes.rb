Rails.application.routes.draw do
  # resources :restaurants
  get "restaurants", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  post "restaurants", to: "restaurants#create"

  get "restaurant/:restaurant_id/reviews/new", to: "reviews#new", as: :new_restaurant_review
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
