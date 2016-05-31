Rails.application.routes.draw do

  root 'chats#index'

# RESTful Routes
  resources :chats
  resources :likes
  resources :posts
  resources :prizes
  resources :connections

# RESTful Routes not yet working
  # UPDATE
  post "/update_chat/:id", :controller => "chats", :action => "update"
  post "/update_like/:id", :controller => "likes", :action => "update"
  post "/update_post/:id", :controller => "posts", :action => "update"
  post "/update_prize/:id", :controller => "prizes", :action => "update"

  devise_for :users
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

# New RCAVs created to post pictures, see stats, see likes, and join a chat
  post "/chat_post", :controller => "chats", :action => "chat_post"
  get "/chats/:id/stats", :controller => "chats", :action => "stats"
  get "/posts/:id/likes", :controller => "posts", :action => "likes"
  post "/update_connection/:id", :controller => "connections", :action => "update"
  post "/join_chat", :controller => "chats", :action => "join_chat"



# resources :badges
#   # Routes for the Badge resource:
#   # CREATE
#   get "/badges/new", :controller => "badges", :action => "new"
#   post "/create_badge", :controller => "badges", :action => "create"

#   # READ
#   get "/badges", :controller => "badges", :action => "index"
#   get "/badges/:id", :controller => "badges", :action => "show"

#   # UPDATE
#   get "/badges/:id/edit", :controller => "badges", :action => "edit"
#   post "/update_badge/:id", :controller => "badges", :action => "update"

#   # DELETE
#   get "/delete_badge/:id", :controller => "badges", :action => "destroy"


#   #------------------------------

#   # Routes for the Follow resource:
#   # CREATE
#   get "/follows/new", :controller => "follows", :action => "new"
#   post "/create_follow", :controller => "follows", :action => "create"

#   # READ
#   get "/follows", :controller => "follows", :action => "index"
#   get "/follows/:id", :controller => "follows", :action => "show"

#   # UPDATE
#   get "/follows/:id/edit", :controller => "follows", :action => "edit"
#   post "/update_follow/:id", :controller => "follows", :action => "update"

#   # DELETE
#   get "/delete_follow/:id", :controller => "follows", :action => "destroy"
#   #------------------------------



end
