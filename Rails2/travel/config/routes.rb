Rails.application.routes.draw do
  get 'transactions/index'

 resources :transactions do
 	resources :ditems
 end

  root'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
