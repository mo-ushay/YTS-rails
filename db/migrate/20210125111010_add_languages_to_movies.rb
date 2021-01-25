class AddLanguagesToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :languages, :string
  end
end
