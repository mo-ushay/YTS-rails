module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :movie, resolver: Queries::Movies::RetrieveMovie, description: '1 Movie'
    field :movies, resolver: Queries::Movies::RetrieveMovies, description: 'All Movies'
    field :user, resolver: Queries::Users::RetrieveUser, description: 'A user'
    field :feedbacks, resolver: Queries::Feedbacks::RetrieveFeedbacks, description: 'Feedback of a movie'
  end
end
