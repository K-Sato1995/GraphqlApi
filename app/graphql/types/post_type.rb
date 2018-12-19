Types::PostType = GraphQL::ObjectType.define do
  name 'Post'

  field :id, !types.ID
  field :title, !types.String
  field :description, !types.String
end
