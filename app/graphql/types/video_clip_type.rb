module Types
  class VideoClipType < Types::BaseObject
    field :id, Int, null: false
    field :preview_url, String, null: false
    field :resolution, Int, null: false
  end
end
