module Types
  class MovieType < BaseObject
    description 'A movie'

    field :id, ID, null: false
    field :name, String, null: false
    field :downloads, Int, null: true
    field :release_date, String, null: false
    field :synopsis, String, null: false
    field :video_quality, String, null: true
    field :languages, String, null: true
    field :genres, String, null: true
    field :is_featured, Boolean, null: true
    field :total_likes, Int, null: true
    field :created_by, Types::UserType, null: false
    field :rating, Float, null: true
  end
end
