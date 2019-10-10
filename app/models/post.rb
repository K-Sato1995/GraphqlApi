class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_one :audio_clip
  has_one :video_clip
  has_one :image
end
