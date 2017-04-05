Rails.application.routes.draw do
  get 'transactions/index'
 
resources :trips 

resources :trips do
	resources :transportations
end	 



 resources :transactions do
 	resources :ditems
 end

  root'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
