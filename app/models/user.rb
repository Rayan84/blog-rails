class User < ApplicationRecord
  validates :name, presence: true
  validates :bio, presence: true
  validates :posts_counter, numericality: { only_integer: true, greated_than_or_equal_to: 0 }
  has_many :posts
  has_many :likes
  has_many :comments
end
