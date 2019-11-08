module Types
  class CommentType < Types::BaseObject
    description 'Comment'
    field :id, ID, null: false
    field :content, String, null: false
    field :post, Types::PostType, null: false
    # Uncomment the code below if you want to authorize users
    # def self.authorized?(object, context)
    #   super && (!context[:current_user].banned?)
    # end
  end
end
