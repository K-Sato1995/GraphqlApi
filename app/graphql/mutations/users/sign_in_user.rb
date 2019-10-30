require '/Users/katsuki/WorkSpace/Rails/graphql_api/lib/auth/auth_token.rb'

module Mutations
  module Users
    class SignInUser < Mutations::BaseMutation
      include Auth
      null true

      argument :email, Types::Inputs::AuthProviderEmailInput, required: false

      field :token, String, null: true
      field :user, Types::UserType, null: true

      def resolve(email: nil)
        # basic validation
        return unless email

        user = User.find_by email: email[:email]

        # ensures we have the correct user
        return unless user
        return unless user.authenticate(email[:password])
 
        token = AuthToken.token_for_user(user)
 
        { user: user, token: token }
      end
    end
  end
end