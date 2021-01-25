class DropVideoQualitiesTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :video_qualities
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
