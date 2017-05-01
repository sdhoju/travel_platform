Rails.application.routes.draw do


devise_for :users

 


resources :trips do
	get 'download'
	resources :transactions
	
	resources :transportations do
		resources :receipts
	end
	
	resources :registration_fees do
		resources :receipts
	end

	resources :other_expenses do
		resources :receipts
	end

end	 



 root'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
