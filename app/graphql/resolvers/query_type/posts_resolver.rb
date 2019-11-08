module Resolvers
  module QueryType
    class PostsResolver < Resolvers::BaseResolver
      type [Types::PostType], null: false

      def resolve(**_args)
        Post.all
        # Uncommnet the code below if you want to use current user to get the posts.
        # context[:current_user].posts
      end
    end
  end
end
