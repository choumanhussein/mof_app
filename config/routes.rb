Rails.application.routes.draw do
  root to: 'rentals#index'
  resources :rentals do
    collection do
      post :confirm
		end
  end
  resources :properties
end
