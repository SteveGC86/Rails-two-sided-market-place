Rails.application.routes.draw do

  resources :shopping_lists do
    resources :items
  end

  resources :profiles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "shopping_lists#index"

end
