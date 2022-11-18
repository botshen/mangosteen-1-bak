Rails.application.routes.draw do
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show"
end
