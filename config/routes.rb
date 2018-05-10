Rails.application.routes.draw do

  resources :shopping_lists do
    resources :items
  end

  resources :profiles do
    member do
      post 'charge'
    end
  end
  devise_for :users 
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "shopping_lists#index"

  get '/home', to: "pages#home"

end

