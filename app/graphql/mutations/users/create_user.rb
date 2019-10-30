module Mutations
  module Users
    class CreateUser < Mutations::BaseMutation
      graphql_name 'CreateUser'

      # SignUpに使用する情報
      class AuthProviderSignupData < Types::Inputs::BaseInputObject
        argument :email, Types::Inputs::AuthProviderEmailInput, required: false
      end

      argument :name, String, required: false
      argument :auth_provider, AuthProviderSignupData, required: false

      field :user, Types::UserType, null: true
      field :result, Boolean, null: true

      def resolve(name: nil, auth_provider: nil)
        user = User.create!(
                  name: name,
                  email: auth_provider&.[](:email)&.[](:email),
                  password: auth_provider&.[](:email)&.[](:password)
                )
        {
          user: user,
          result: user.errors.blank?
        }
      end
    end
  end
end
