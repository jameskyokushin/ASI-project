ERP::Application.routes.draw do	
  devise_for :users
	match '/client', :to => "pages#client"
	root :to => "pages#home"
end
