module Resolvers
  module QueryType
    class PostsResolver < Resolvers::BaseResolver
      type [Types::PostType], null: false
      argument :q, Types::BaseScalar, required: false

      def resolve(**args)
        # Search Posts with Ransack
        Post.ransack(args[:q]).result(distinct: true).order(id: :desc)
      end
      # Uncommnet the code below if you want to use current user to get the posts.
      # def resolve(**_args)
        # context[:current_user].posts
      # end
    end
  end
end
