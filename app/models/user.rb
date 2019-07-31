class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :username, presence: true, uniqueness: true, length: { in: 6..30 }
  validates :email ,presence: true, uniqueness: true ,length: { in: 6..200 }, format: {with: VALID_EMAIL_REGEX}

  has_many :posts
  has_many :comments
end
