Rails.application.routes.draw do
	#root to: "devise/sessions#new"
  devise_for :users
  namespace 'api', defaults: {format: 'json'} do
  	namespace 'v1' do
  		resources :categories  		
  		resources :locations
  		resources :restaurants
  	end  	
  end
end
