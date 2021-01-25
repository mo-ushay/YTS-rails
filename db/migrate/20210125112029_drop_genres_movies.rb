class DropGenresMovies < ActiveRecord::Migration[6.1]
  def up
    drop_table :genres_movies
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
