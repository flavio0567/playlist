Rails.application.routes.draw do

  get "/main" => "mains#new"

  get "/main/create" => "mains#create"

  delete "/main/:id", to: "mains#destroy", as: "destroy_session"

  post "/users" => "users#create"
  
  get "/users/:id", to: "users#show", as: "show_user"

  get "/songs" => "songs#index"

  post "/songs/create" => "songs#create"

  get "songs/:id", to: "songs#show", as: "show_song"

  post "songs/destroy" => "songs#destroy"

  post "/joins" => "joins#create"

  delete "/songs/joins/unjoin" => "joins#destroy"

end
