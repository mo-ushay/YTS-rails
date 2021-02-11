module Types
  class UserType < BaseObject
    description 'A User'

    field :id, ID, null: false
    field :name, String, null: false
    field :user_name, String, null: false
    field :email, String, null: false
    field :introduction, String, null: false
    field :abilities, [String], null: false
    field :created_at, String, null: true
  end
end
