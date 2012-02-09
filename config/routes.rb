ERP::Application.routes.draw do
  resources :marketings

  resources :cities

  resources :provinces

  resources :products

  resources :leads

  resources :industries

  devise_for :users
	match '/clients', :to => "pages#clients"
	root :to => "pages#home"
end
