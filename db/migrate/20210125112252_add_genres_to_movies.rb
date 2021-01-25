class AddGenresToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :genres, :string
  end
end
