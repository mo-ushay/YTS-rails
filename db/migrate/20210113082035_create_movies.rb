class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :downloads
      t.text :synopsis
      t.date :release_date
      t.boolean :is_featured

      t.timestamps
    end
  end
end
