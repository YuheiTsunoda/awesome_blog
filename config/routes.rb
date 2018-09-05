Rails.application.routes.draw do
  	
	root "static_pages#home"
	get "/about", to: "static_pages#about"
	get "/signup", to: "users#new"
	get "/login", to: "sessions#new"
	post "/login", to: "sessions#create"
	delete "/logout", to: "sessions#destroy"

	resources :users, except: :new
	# users#index
	# users#create
	# users#new
	# users#destroy
	resources :microposts, only: :create
	resources :relationships, only: [:create, :destroy]
	


	
end
