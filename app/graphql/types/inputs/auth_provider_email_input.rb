module Types
  module Inputs
    class AuthProviderEmailInput < Types::Inputs::BaseInputObject
      graphql_name 'AUTH_PROVIDER_EMAIL'

      argument :email, String, required: true
      argument :password, String, required: true
    end
  end
end