Rails.application.routes.draw do
	  get 'welcomeindia/index'
	  root :to => "welcomeindia#index"
	    resources :welcomeindia
	    resources :players
end
