FamilyMediReady::Application.routes.draw do
  # get "medical_histories/index"
  # get "medical_histories/new"
  # get "medical_histories/create"
  # get "medical_histories/show"
  # get "medical_histories/update"
  # get "medical_histories/destroy"
  # get "medical_history/index"
  # get "medical_history/new"
  # get "medical_history/create"
  # get "medical_history/show"
  # get "medical_history/update"
  # get "medical_history/destroy"
  # get "families/index"
  # get "families/new"
  # get "families/create"
  # get "families/show"
  # get "families/update"
  # get "families/destroy"
  # get "family/index"
  # get "family/new"
  # get "family/create"
  # get "family/show"
  # get "family/update"
  # get "family/destroy"
  get 'get_medical_history', to: 'families#get_medical_history'
  devise_for :users

  resources :users do
    resources :people do
      resources :families
      resources :medical_histories
    end
  end

  devise_scope :user do
    root :to => "devise/sessions#new"
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
