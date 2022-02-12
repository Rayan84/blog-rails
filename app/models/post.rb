class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 250 }
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes
end
