class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  enum role: [ :banned, :reader, :sub_admin, :admin ]
end
