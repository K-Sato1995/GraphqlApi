module Resolvers
  module QueryType
    class PostResolver < Resolvers::BaseResolver
      type Types::PostType, null: false
      argument :id, ID, required: false

      def resolve(**args)
        post = Post.find(args[:id])
        # Uncommnet the code below if you want to authorize users to get a specific post.
        # Pundit.authorize(context[:current_user], post, :show?)
      end
    end
  end
end
