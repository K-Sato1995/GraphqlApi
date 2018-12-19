Types::PostType = GraphQL::ObjectType.define do
  name 'Post'

  field :id, !type.ID
  field :title, !type.String
  field :description, !type.String
end
