class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one :audio_clip, dependent: :destroy
  has_one :video_clip, dependent: :destroy
end
