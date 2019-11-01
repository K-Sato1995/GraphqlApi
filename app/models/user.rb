class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  has_many :posts, dependent: :destroy

  enum role: [ :banned, :reader, :sub_admin, :admin ]
end
