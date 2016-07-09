Rails.application.routes.draw do

  root to: "travelguides#index"
  resources :travelguides, only: [:index, :new, :create] do
  	resource :completion, only: [:create, :destroy]
	end

  resources :attractions, only: [:index, :new, :create]

  resource :session, only: [:new, :create]
end
