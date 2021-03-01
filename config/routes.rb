Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql' if Rails.env.development?
  post '/graphql', to: 'graphql#execute'
  resources :movies
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  root 'homes#index'

  get '/', to: 'homes#index'

  resources :movies do
    resources :feedbacks, only: %i[create update destroy], shallow: true
  end
end
