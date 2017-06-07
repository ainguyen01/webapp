Rails.application.routes.draw do
  # Routes for the Request resource:
  # CREATE
  get "/requests/new", :controller => "requests", :action => "new"
  post "/create_request", :controller => "requests", :action => "create"

  # READ
  get "/requests", :controller => "requests", :action => "index"
  get "/requests/:id", :controller => "requests", :action => "show"

  # UPDATE
  get "/requests/:id/edit", :controller => "requests", :action => "edit"
  post "/update_request/:id", :controller => "requests", :action => "update"

  # DELETE
  get "/delete_request/:id", :controller => "requests", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Dislike resource:
  # CREATE
  get "/dislikes/new", :controller => "dislikes", :action => "new"
  post "/create_dislike", :controller => "dislikes", :action => "create"

  # READ
  get "/dislikes", :controller => "dislikes", :action => "index"
  get "/dislikes/:id", :controller => "dislikes", :action => "show"

  # UPDATE
  get "/dislikes/:id/edit", :controller => "dislikes", :action => "edit"
  post "/update_dislike/:id", :controller => "dislikes", :action => "update"

  # DELETE
  get "/delete_dislike/:id", :controller => "dislikes", :action => "destroy"
  #------------------------------

  # Routes for the Copay resource:
  # CREATE
  get "/copays/new", :controller => "copays", :action => "new"
  post "/create_copay", :controller => "copays", :action => "create"

root to: "copays#index"
  # READ
  # get "/copays", :controller => "copays", :action => "index"
  get "/copays/:id", :controller => "copays", :action => "show"

  # UPDATE
  get "/copays/:id/edit", :controller => "copays", :action => "edit"
  post "/update_copay/:id", :controller => "copays", :action => "update"

  # DELETE
  get "/delete_copay/:id", :controller => "copays", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
