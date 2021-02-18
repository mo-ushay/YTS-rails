module Queries
  module Feedbacks
    class RetrieveFeedbacks < Queries::BaseQuery

      type [Types::FeedbackType], null: false
      argument :movie_id, ID, required:  true
      argument :feedback_type, String, required:  false

      def resolve(movie_id:, feedback_type: nil)
        Feedback.type_of_feedback(feedback_type).movie_feedback(movie_id)
      end
    end
  end
end
