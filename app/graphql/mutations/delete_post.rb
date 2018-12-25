module Mutations
  class DeletePost < Mutations::BaseMutation
    graphql_name 'DeletePost'

    field :post, Types::PostType, null: true
    field :result, Boolean, null: true

    argument :id, ID, required: true

    def resolve(**args)
      post = Post.find(args[:id])
      post.destroy
      {
        post: post,
        result: post.errors.blank?
      }
    end
  end
end
