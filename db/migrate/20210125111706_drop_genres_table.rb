class DropGenresTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :genres
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
