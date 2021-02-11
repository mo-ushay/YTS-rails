module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :movies, resolver: Queries::RetrieveMovie, description: "1 Movie"
    field :movies, resolver: Queries::RetrieveMovies, description: "All Movie"
  end
end
