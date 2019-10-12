module Types
  class MovieClipType < Types::BaseObject
    field :id, Int, null: false
    field :previewURL, String, null: false
    field :resolution, Int, null: false
  end
end
