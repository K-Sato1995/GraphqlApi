module Mutations
  module Comments
    class CreateComment < Mutations::BaseMutation
      graphql_name 'CreateComment'

      field :comment, Types::CommentType, null: true
      field :result, Boolean, null: true

      argument :post_id, ID, required: true
      argument :content, String, required: true

      def resolve(**args)
        post = Post.find(args[:post_id])
        comment = post.comments.build(content: args[:content])
        comment.save
        {
          comment: comment,
          result: post.errors.blank?
        }
      end
    end
  end
end
