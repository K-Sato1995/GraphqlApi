module Types
  class UserType < Types::BaseObject
    description 'User'
    field :id, Int, null: false
    field :name, String, null: true
    field :role, Int, null: true
    field :email, String, null: false
    field :token, String, null: false
  end
end
