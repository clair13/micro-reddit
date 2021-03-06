class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :message length: { maximum: 200}, presence: true
end
