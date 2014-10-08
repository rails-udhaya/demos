Demos::Application.routes.draw do
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
  
  resources :home do
    collection do
        get 'd3_tree_chart'
        get 'doctor_details'
        get 'elibrary'
        get 'stubhub_data'
        get 'airbnb_partial_list'
        get 'noagentproperty_list'
        get 'noagent_competed_list'
        get 'noagentproperty_data'
        get 'zedge_phones'
        get 'brandprofiles_partial_data'
        get 'active_partial_data'
        get 'f6s_partial_data'
        get 'f6s_second_partial_data'
        get 'start_ups_leaders'
        get 'zedge_details'
        get 'auspost_data'
        get 'auspost_full_data'
        get 'asdonline_data'
        post 'fetch_stubhub_data'
        post 'fetch_noagentproperty_data'
        get 'horseracing_data'
        get 'menumania_partial_data'
        get 'commercial_partial_data'
        get 'kathe_demo'
        get 'twitter_demo'
        post 'fetch_twitter_demo'
        get 'cada_demo'
    end
end

resources :mauri do
      collection do
          post 'fetch_data_from_indeed_jobs'
      end
end

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
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
