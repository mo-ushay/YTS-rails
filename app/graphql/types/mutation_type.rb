module Types
  class MutationType < Types::BaseObject
    field :add_movie, mutation: Mutations::AddMovie, description: 'A movie'
  end
end
