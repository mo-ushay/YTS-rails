class AddingUserAndMovieRefToFeedback < ActiveRecord::Migration[6.1]
  def change
    add_reference :feedbacks, :user, foreign_key: true
    add_reference :feedbacks, :movie, foreign_key: true
  end
end
