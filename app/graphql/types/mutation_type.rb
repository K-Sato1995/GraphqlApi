module Types
  class MutationType < Types::BaseObject
    field :createComment, mutation: Mutations::CommentMutations::CreateComment
    field :deletePost, mutation: Mutations::PostMutations::DeletePost
    field :updatePost, mutation: Mutations::PostMutations::UpdatePost
    field :createPost, mutation: Mutations::PostMutations::CreatePost
  end
end
