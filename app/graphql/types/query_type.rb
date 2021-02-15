module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :movie, resolver: Queries::RetrieveMovie, description: "1 Movie"
    field :movies, resolver: Queries::RetrieveMovies, description: "All Movies"
    field :user, resolver: Queries::RetrieveUser, description: "A user" 
  end
end
