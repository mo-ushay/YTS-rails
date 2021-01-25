class DropLanguagesTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :languages
  end

  def def down
    raise ActiveRecord::IrreversibleMigration
  end
end
