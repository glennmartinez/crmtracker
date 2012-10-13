Crmtracker::Application.routes.draw do
  
  resources :clients do
    resources :projects
  end

  resources :projects do
    resources :quotes
  end
  resources :contractors do
    resources :quotes
    get :autocomplete_contractor_firstname, :on => :collection
  end
 
  resources :suppliers do
    resources :quotes
    get :autocomplete_supplier_name, :on => :collection 
  end

  resources :quotes do
    resources :labouritems
    resources :materialitems
  end

  post "/quote/add_contractor" => "quotes#add_contractor"

  get "quote/:quote_id/get_contractor" => "quotes#get_contractor", :as => :get_contractor

  post "/quote/add_labouritem" => "quotes#add_labouritem"

  get "/projects/:project_id/quotes/:quote_id/progress_manage" => "quotes#progress_manage", :as => :progress_manage

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'projects#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
