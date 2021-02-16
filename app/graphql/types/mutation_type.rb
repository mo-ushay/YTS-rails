module Types
  class MutationType < Types::BaseObject
    field :add_movie, mutation: Mutations::AddMovie, description: 'A movie'
    field :update_movie, mutation: Mutations::UpdateMovie, description: 'Update a movie'
  end
end
