module Mutations
  class CreatePost < Mutations::BaseMutation
    graphql_name 'CreatePost'

    field :post, Types::PostType, null: true
    field :result, Boolean, null: true

    argument :title, String, required: false
    argument :description, String, required: false

    def resolve(**args)
      post = Post.create(title: args[:title], description: args[:description])
      {
        post: post,
        result: post.errors.blank?
      }
    end
  end
end
