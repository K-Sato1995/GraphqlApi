module Types
  class PostType < Types::BaseObject
    description 'Post'

    field :id, Int, null: false
    field :title, String, null: false
    field :description, String, null: false
    field :comments, [Types::CommentType], null: false
  end
end
