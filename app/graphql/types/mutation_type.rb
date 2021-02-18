module Types
  class MutationType < Types::BaseObject

    field :add_movie, mutation: Mutations::Movies::AddMovie, description: 'A movie'
    field :update_movie, mutation: Mutations::Movies::UpdateMovie, description: 'Update a movie'
    field :user_login, mutation: Mutations::Login::UserLogin, description: 'Login'

  end
end
