Rails.application.routes.draw do
  get 'receipts/index'

  get 'receipts/new'

  get 'receipts/create'

  get 'receipts/destroy'

  get 'trips/excel' => 'trips#excel'


devise_for :users

 
#resources :trips do
#	member do:
#		get 'excel'
#	end
#end

resources :trips 

resources :trips do
	resources :transportations
end	 
resources :receipts


 resources :transactions do
 	resources :ditems
 end
 

 root'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
