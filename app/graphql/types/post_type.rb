module Types
  class PostType < Types::BaseObject
    description 'Post'
    field :id, Int, null: false
    field :title, String, null: false
    field :description, String, null: false
    field :status, Types::PostStatus, null: false
    field :media_item, Types::MediaItemType, null: true
    field :comments, [Types::CommentType], null: true

    def media_item
      return object.audio_clip if object.audio_clip

      object.video_clip
    end
  end
end
