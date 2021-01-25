class DopLanguagesMovies < ActiveRecord::Migration[6.1]
  def up
    drop_table :languages_movies 
  end

  def def down
    raise ActiveRecord::IrreversibleMigration
  end
end
