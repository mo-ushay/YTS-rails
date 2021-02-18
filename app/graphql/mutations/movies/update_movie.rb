module Mutations
  module Movies
    class UpdateMovie < Mutations::BaseMutation
      argument :params, Types::Input::MovieInputType, required: true
      argument :id, Int, required: true

      field :is_updated, Boolean, null: false

      def resolve(params:, id:)
        movie = Movie.find id
        {is_updated: movie.(params.to_h)}
      end
    end
  end
end
