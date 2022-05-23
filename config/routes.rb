Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
  
  get "/organizations" => "organizations#index"
  post "/organizations" => "organizations#create"
  patch "/organizations" => "organizations#update"

  get "/shifts" => "shifts#index"
  post "/shifts" => "shifts#create"
end
