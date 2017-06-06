Rails.application.routes.draw do
  resources :travel_vendors do
  	collection do
  		get 'user_travels_list'
  	end
  end
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
