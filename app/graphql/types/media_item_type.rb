module Types
  class MediaItemType < Types::BaseUnion
    possible_types Types::AudioClipType, Types::MovieClipType

    def self.resolve_type(object, context)
      if object.is_a?(AudioClip)
        Types::AudioClipType
      else
        Types::MovieClipType
      end
    end
  end
end
