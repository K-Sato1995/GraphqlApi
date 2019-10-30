module Types
  class MutationType < Types::BaseObject
    field :createComment, mutation: Mutations::Comments::CreateComment
    field :deletePost, mutation: Mutations::Posts::DeletePost
    field :updatePost, mutation: Mutations::Posts::UpdatePost
    field :createPost, mutation: Mutations::Posts::CreatePost
    field :createUser, mutation: Mutations::Users::CreateUser
    field :signin_user, mutation: Mutations::Users::SignInUser
  end
end
