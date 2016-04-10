Rails.application.routes.draw do

  get "/", :controller => "chats", :action => "index"

  devise_for :users
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


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

  # Routes for the Shoutout resource:
  # CREATE
  get "/shoutouts/new", :controller => "shoutouts", :action => "new"
  post "/create_shoutout", :controller => "shoutouts", :action => "create"

  # READ
  get "/shoutouts", :controller => "shoutouts", :action => "index"
  get "/shoutouts/:id", :controller => "shoutouts", :action => "show"

  # UPDATE
  get "/shoutouts/:id/edit", :controller => "shoutouts", :action => "edit"
  post "/update_shoutout/:id", :controller => "shoutouts", :action => "update"

  # DELETE
  get "/delete_shoutout/:id", :controller => "shoutouts", :action => "destroy"
  #------------------------------

  # Routes for the Prop resource:
  # CREATE
  get "/props/new", :controller => "props", :action => "new"
  post "/create_prop", :controller => "props", :action => "create"

  # READ
  get "/props", :controller => "props", :action => "index"
  get "/props/:id", :controller => "props", :action => "show"

  # UPDATE
  get "/props/:id/edit", :controller => "props", :action => "edit"
  post "/update_prop/:id", :controller => "props", :action => "update"

  # DELETE
  get "/delete_prop/:id", :controller => "props", :action => "destroy"
  #------------------------------

  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"
  #------------------------------

  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  # Routes for the Post resource:
  # CREATE
  get "/posts/new", :controller => "posts", :action => "new"
  post "/create_post", :controller => "posts", :action => "create"

  # READ
  get "/posts", :controller => "posts", :action => "index"
  get "/posts/:id", :controller => "posts", :action => "show"
  get "/posts/:id/likes", :controller => "posts", :action => "likes"

  # UPDATE
  get "/posts/:id/edit", :controller => "posts", :action => "edit"
  post "/update_post/:id", :controller => "posts", :action => "update"

  # DELETE
  get "/delete_post/:id", :controller => "posts", :action => "destroy"
  #------------------------------

  # Routes for the Prize resource:
  # CREATE
  get "/prizes/new", :controller => "prizes", :action => "new"
  post "/create_prize", :controller => "prizes", :action => "create"

  # READ
  get "/prizes", :controller => "prizes", :action => "index"
  get "/prizes/:id", :controller => "prizes", :action => "show"

  # UPDATE
  get "/prizes/:id/edit", :controller => "prizes", :action => "edit"
  post "/update_prize/:id", :controller => "prizes", :action => "update"

  # DELETE
  get "/delete_prize/:id", :controller => "prizes", :action => "destroy"
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

  # Routes for the Chat resource:

  resources :chats

# RESTful Routes not yet working
  # UPDATE
  post "/update_chat/:id", :controller => "chats", :action => "update"

  # New RCAVs created to post pictures, see stats
  post "/chat_post", :controller => "chats", :action => "chat_post"
  get "/chats/:id/stats", :controller => "chats", :action => "stats"

# Deleted and replaced with scaffold links
  # get "/chats", :controller => "chats", :action => "index"
  # get "/chats/:id", :controller => "chats", :action => "show"
  # get "/chats/new", :controller => "chats", :action => "new"
  # get "/chats/:id/edit", :controller => "chats", :action => "edit"
  # get "/delete_chat/:id", :controller => "chats", :action => "destroy"

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

  #------------------------------

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
