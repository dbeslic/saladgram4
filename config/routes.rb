Rails.application.routes.draw do

  get "/", :controller => "chats", :action => "index"

  devise_for :users
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

# RESTful Routes
  resources :chats
  resources :likes
  resources :posts
  resources :prizes


# RESTful Routes not yet working
  # UPDATE
  post "/update_chat/:id", :controller => "chats", :action => "update"
  post "/update_like/:id", :controller => "likes", :action => "update"
  post "/update_post/:id", :controller => "posts", :action => "update"
  post "/update_prize/:id", :controller => "prizes", :action => "update"


# New RCAVs created to post pictures, see stats, likes on one post
  post "/chat_post", :controller => "chats", :action => "chat_post"
  get "/chats/:id/stats", :controller => "chats", :action => "stats"
  get "/posts/:id/likes", :controller => "posts", :action => "likes"

  #------------------------------

  # Routes for the Prize resource:
  # CREATE
  # get "/prizes/new", :controller => "prizes", :action => "new"
  # post "/create_prize", :controller => "prizes", :action => "create"

  # READ
  # get "/prizes", :controller => "prizes", :action => "index"
  # get "/prizes/:id", :controller => "prizes", :action => "show"

  # UPDATE
  # get "/prizes/:id/edit", :controller => "prizes", :action => "edit"

  # DELETE
  # get "/delete_prize/:id", :controller => "prizes", :action => "destroy"
  #------------------------------

  # Routes for the Connection resource:
  # CREATE
  get "/connections/new", :controller => "connections", :action => "new"
  post "/create_connection", :controller => "connections", :action => "create"

  # READ
  get "/connections", :controller => "connections", :action => "index"
  get "/connections/:id", :controller => "connections", :action => "show"
  post "/join_chat", :controller => "chats", :action => "join_chat"

  # UPDATE
  get "/connections/:id/edit", :controller => "connections", :action => "edit"
  post "/update_connection/:id", :controller => "connections", :action => "update"

  # DELETE
  get "/delete_connection/:id", :controller => "connections", :action => "destroy"
  #------------------------------


 resources :badges
  # Routes for the Badge resource:
  # CREATE
  get "/badges/new", :controller => "badges", :action => "new"
  post "/create_badge", :controller => "badges", :action => "create"

  # READ
  get "/badges", :controller => "badges", :action => "index"
  get "/badges/:id", :controller => "badges", :action => "show"

  # UPDATE
  get "/badges/:id/edit", :controller => "badges", :action => "edit"
  post "/update_badge/:id", :controller => "badges", :action => "update"

  # DELETE
  get "/delete_badge/:id", :controller => "badges", :action => "destroy"


  #------------------------------

  # Routes for the Follow resource:
  # CREATE
  get "/follows/new", :controller => "follows", :action => "new"
  post "/create_follow", :controller => "follows", :action => "create"

  # READ
  get "/follows", :controller => "follows", :action => "index"
  get "/follows/:id", :controller => "follows", :action => "show"

  # UPDATE
  get "/follows/:id/edit", :controller => "follows", :action => "edit"
  post "/update_follow/:id", :controller => "follows", :action => "update"

  # DELETE
  get "/delete_follow/:id", :controller => "follows", :action => "destroy"
  #------------------------------


# Deleted and replaced with scaffold links
  # get "/chats", :controller => "chats", :action => "index"
  # get "/chats/:id", :controller => "chats", :action => "show"
  # get "/chats/new", :controller => "chats", :action => "new"
  # get "/chats/:id/edit", :controller => "chats", :action => "edit"
  # get "/delete_chat/:id", :controller => "chats", :action => "destroy"


  #------------------------------

  # Routes for the Post resource:
  # CREATE
  # get "/posts/new", :controller => "posts", :action => "new"
  # post "/create_post", :controller => "posts", :action => "create"

  # READ
  # get "/posts", :controller => "posts", :action => "index"
  # get "/posts/:id", :controller => "posts", :action => "show"

  # UPDATE
  # get "/posts/:id/edit", :controller => "posts", :action => "edit"

  # DELETE
  # get "/delete_post/:id", :controller => "posts", :action => "destroy"

  #------------------------------

  # Routes for the Like resource:
  # CREATE
  # get "/likes/new", :controller => "likes", :action => "new"
  # post "/create_like", :controller => "likes", :action => "create"

  # READ
  # get "/likes", :controller => "likes", :action => "index"
  # get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  # get "/likes/:id/edit", :controller => "likes", :action => "edit"

  # DELETE
  # get "/delete_like/:id", :controller => "likes", :action => "destroy"


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
