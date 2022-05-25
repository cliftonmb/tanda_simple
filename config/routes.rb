Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  patch "/users" => "users#update"

  post "/sessions" => "sessions#create"
  
  get "/organizations" => "organizations#index"
  post "/organizations" => "organizations#create"
  patch "/organizations/:id" => "organizations#update"

  get "/shifts" => "shifts#index"
  post "/shifts" => "shifts#create"
  delete "/shifts" => "shifts#destroy"
end
