module Types
  class AudioClipType < Types::BaseObject
    field :id, Int, null: false
    field :duration, Int, null: false
  end
end
