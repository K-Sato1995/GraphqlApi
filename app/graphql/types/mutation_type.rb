module Types
  class MutationType < Types::BaseObject
    field :createComment, mutation: Mutations::CreateComment
    field :deletePost, mutation: Mutations::DeletePost
    field :updatePost, mutation: Mutations::UpdatePost
    field :createPost, mutation: Mutations::CreatePost
  end
end
