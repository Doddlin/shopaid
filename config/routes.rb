Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  get '/mylists', to: 'lists#mylists'
  post '/assigntome/:id', to: 'lists#assigntome', as: 'assigntome'

    resources :lists do
      resources :listitems
    end

end
