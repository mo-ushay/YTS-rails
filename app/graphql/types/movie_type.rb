module Types
  class MovieType < BaseObject
    description 'The Greatest Ever Movie!'

    field :id, ID, null: false
    field :name, String, null: false
    field :downloads, String, null: false
    field :release_date, String, null: false
    field :is_featured, Boolean, null: false
    field :created_by, Types::UserType, null: false
    field :rating, Float, null: true
  end
end
