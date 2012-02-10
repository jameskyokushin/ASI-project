ERP::Application.routes.draw do
  resources :marketings

  resources :cities

  resources :provinces

  resources :products

  resources :leads

  resources :industries

  devise_for :users
	match '/clients', :to => "pages#clients"
	match '/market', :to => "pages#market"
	root :to => "pages#home"
end
