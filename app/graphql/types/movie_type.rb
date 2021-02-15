module Types
  class MovieType < BaseObject
    description 'A movie'

    field :id, ID, null: false
    field :name, String, null: false
    field :downloads, Int, null: true
    field :release_date, String, null: false
    field :synopsis, String, null: false
    field :is_featured, Boolean, null: false
    field :total_likes, Int, null: true
    field :created_by, Types::UserType, null: false
    field :rating, Float, null: true
  end
end
