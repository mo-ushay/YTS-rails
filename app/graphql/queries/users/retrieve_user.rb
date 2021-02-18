module Queries
  module Users
    class RetrieveUser < Queries::BaseQuery

      type Types::UserType, null: false
      argument :id, ID, required:  true

      def resolve(id:)
        User.includes(
          :introduction, :email, :user_name
        )
      end
    end
  end
end



