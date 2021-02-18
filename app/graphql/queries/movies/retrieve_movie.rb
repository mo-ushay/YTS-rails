module Queries
  module Movies
    class RetrieveMovie < Queries::BaseQuery

      type Types::MovieType, null: false
      argument :id, ID, required:  true

      def resolve(id:)
        Movie.includes(
          :profile_photo, :created_by 
        ).left_outer_joins(:ratings).select(
          'movies.*, CAST(AVG(ratings.value) AS DECIMAL(10,1)) AS rating'
        ).find id
      end
    end
  end
end
