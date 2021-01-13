class DropCommentsAndReviewsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :comments
    drop_table :reviews
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end