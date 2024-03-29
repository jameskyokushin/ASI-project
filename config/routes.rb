ERP::Application.routes.draw do
  resources :civil_statuses

  resources :religions

  resources :nationalities

  resources :blood_types

  resources :genders

  resources :designations

  resources :departments

  resources :branches

  resources :clients
  resources :sales
  resources :marketings

  resources :cities

  resources :provinces

  resources :products

  resources :leads

  resources :industries

  devise_for :users
	match '/clientpage', :to => "pages#clientpage"
	match '/marketingleads', :to => "pages#marketingleads"
	match '/salescalls', :to => "pages#salescalls"
	match '/coldcalls', :to => "pages#coldcalls"
	root :to => "pages#home"
end
