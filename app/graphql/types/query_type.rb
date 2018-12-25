module Types
  class QueryType < Types::BaseObject
    field :posts, resolver: Resolvers::QueryType::PostsResolver
    field :post, resolver: Resolvers::QueryType::PostResolver
  end
end
