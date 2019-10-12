module Types
  class MediaItemType < Types::BaseUnion
    possible_types Types::AudioClipType, Types::VideoClipType

    def self.resolve_type(object, context)
      if object.is_a?(AudioClip)
        Types::AudioClipType
      else
        Types::VideoClipType
      end
    end
  end
end
