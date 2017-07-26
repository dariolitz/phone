Rails.application.routes.draw do

  resources :documents
	get 'memberships' => 'memberships#index'

	delete 'memberships/:id' => 'memberships#destroy', as: "delete_membership"

  get 'memberships/new', as: "new_membership"

  # resources :memberships

  post 'memberships' => 'memberships#create'

  get 'memberships/:id/edit' => 'memberships#edit', as: "edit_membership"

	patch '/memberships/:id'	=> 'memberships#update'

	get 'departments' => 'departments#index'

	get 'departments/new', as: "new_department"

	get 'departments/:id' => 'departments#show', as: "department"

	post 'departments' => 'departments#create'

	get 'departments/:id/edit' => 'departments#edit', as: "edit_department"

	patch '/departments/:id' => 'departments#update'

	delete 'departments/:id' => 'departments#destroy', as: "delete_department"

	get 'employees' => 'employees#index'

	get 'employees/new', as: "new_employee"

	get 'employees/:id' => 'employees#show', as: "employee"

	post 'employees' => 'employees#create'

	get 'employees/:id/edit' => 'employees#edit', as: "edit_employee"

	patch '/employees/:id'	=> 'employees#update'

	delete 'employees/:id' => 'employees#destroy', as: "delete_employee"

	# The priority is based upon order of creation: first created -> highest priority.
	# See how all your routes lay out with "rake routes".

	# You can have the root of your site routed with "root"
	# root 'welcome#index'

	# Example of regular route:
	# get 'products/:id' => 'catalog#view'

	# Example of named route that can be invoked with purchase_url(id: product.id)
	# get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

	# Example resource route (maps HTTP verbs to controller actions automatically):
	# resources :products

	# Example resource route with options:
	# resources :products do
	#	member do
	#	get 'short'
	#	post 'toggle'
	#	end
	#
	#	collection do
	#	get 'sold'
	#	end
	# end

	# Example resource route with sub-resources:
	# resources :products do
	#	resources :comments, :sales
	#	resource :seller
	# end

	# Example resource route with more complex sub-resources:
	# resources :products do
	#	resources :comments
	#	resources :sales do
	#	get 'recent', on: :collection
	#	end
	# end

	# Example resource route with concerns:
	# concern :toggleable do
	#	post 'toggle'
	# end
	# resources :posts, concerns: :toggleable
	# resources :photos, concerns: :toggleable

	# Example resource route within a namespace:
	# namespace :admin do
	#	# Directs /admin/products/* to Admin::ProductsController
	#	# (app/controllers/admin/products_controller.rb)
	#	resources :products
	# end
end
