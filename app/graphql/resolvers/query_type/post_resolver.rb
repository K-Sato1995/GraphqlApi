module Resolvers
  module QueryType
    class PostResolver < Resolvers::BaseResolver
      type Types::PostType, null: false
      argument :id, ID, required: false

      def resolve(**args)
        Post.find(args[:id])
      end
    end
  end
end
