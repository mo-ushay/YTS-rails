class DropVideoQualitiesMovies < ActiveRecord::Migration[6.1]
  def change
    drop_table :movies_video_qualities
  end
end
