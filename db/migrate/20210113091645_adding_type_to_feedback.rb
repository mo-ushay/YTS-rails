class AddingTypeToFeedback < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :type, :string
  end
end
