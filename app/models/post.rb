class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 3..140 }
  validates :body, presence: true, length: { maximum: 1000 }

  belongs_to :user
end
