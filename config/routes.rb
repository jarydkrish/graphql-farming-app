Rails.application.routes.draw do
  root 'pages#home'
  namespace :api do
    resources :crops
    resources :farms
    resources :farm_fields
    resources :plantings
  end

  post "/graphql", to: "graphql#execute"
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
end
