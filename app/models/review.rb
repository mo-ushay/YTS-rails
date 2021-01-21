class Review < Feedback
  validates_uniqueness_of :movie_id, scope: :user_id, message: 'Error, cant add more than 1 review for a movie!'
end