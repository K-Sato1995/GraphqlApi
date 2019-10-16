module Resolvers
  module QueryType
    class PostsResolver < Resolvers::BaseResolver
      type [Types::PostType], null: false

      def resolve(**_args)
        context[:current_user].posts
      end
    end
  end
end
