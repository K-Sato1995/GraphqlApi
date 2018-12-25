module Resolvers
  module QueryType
    class PostsResolver < Resolvers::BaseResolver
      type [Types::PostType], null: false

      def resolve(**_args)
        Post.all
      end
    end
  end
end
