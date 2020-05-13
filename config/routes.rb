Rails.application.routes.draw do
  
 
  resources :countries do 
	resources :districts do 
		resources :comments
	end
  end
  
  root to: 'countries#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
