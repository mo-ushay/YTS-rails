class AddVideoQualitiesToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :video_quality, :string
  end
end
