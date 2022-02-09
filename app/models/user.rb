class User < ApplicationRecord

  def self.recent_posts(parameters)
    @recent_posts = Post.limit(3).where(author_id: parameters).order(created_at: :desc)
  end

  has_many :posts
  has_many :likes
  has_many :comments
end
