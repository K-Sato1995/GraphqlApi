module Types
  class UserType < Types::BaseObject
    description 'User'
    field :id, Int, null: false
    field :name, String, null: false
    field :role, Int, null: false
  end
end
