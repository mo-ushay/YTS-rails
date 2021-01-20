class Review < Feedback
  it { should validate_uniqueness_of(:movie_id).scoped_to(:user_id).with_message('Error, cant add more than 1 review for a movie!') }
end