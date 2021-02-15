Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  resources :movies
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  root 'homes#index'

  get '/', to: 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Example of vue_cli-rails
  get 'yts/src/views/Home.vue' => 'views#Home'
  get 'vue_demo/bar' => 'vue_demo#bar'
  get 'vue_demo/baz' => 'vue_demo#baz'
end