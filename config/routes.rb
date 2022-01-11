Rails.application.routes.draw do
  # get 'reviews/', to: "reviews#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews
  end
end

# resources :reviews, only: [ :new, :create, :index ]
# this is a limiter when you don't want all the 7 crud actions
