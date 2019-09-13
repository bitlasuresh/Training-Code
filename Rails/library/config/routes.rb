Rails.application.routes.draw do
	root :to => "main_pages#index"
  resources :books
  resources :cities
  resources :library_stores
  resources :areas
  resources :cities
  resources :main_pages
  resources :logins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
