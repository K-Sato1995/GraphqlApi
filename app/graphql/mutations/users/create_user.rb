module Mutations
  module Users
    class CreateUser < Mutations::BaseMutation
      graphql_name 'CreateUser'

      field :user, Types::UserType, null: true
      field :result, Boolean, null: true

      argument :name, String, required: false
      argument :role, Int, required: false

      def resolve(**args)
        user = User.create(name: args[:name], role: args[:role])
        {
          user: user,
          result: user.errors.blank?
        }
      end
    end
  end
end
