class CreateMovieRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_roles do |t|
      t.string :acting_as
      t.string :role_played

      t.timestamps
    end
  end
end
