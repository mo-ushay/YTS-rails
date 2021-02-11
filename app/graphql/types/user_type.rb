module Types
  class UserType < BasicObject
    description 'The User'

    field :id, ID, null: false
    field :name, String, null: false
    field :user_name, String, null: false
    field :introduction, String, null: false
    field :abilities, [String], null: false
    field :email, String, null: false
    field :created_at, String, null: false
  end
end
