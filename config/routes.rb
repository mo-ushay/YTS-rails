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

  resources :movies do
    resources :feedbacks, only: [:create, :update, :destroy], shallow: true
  end
end