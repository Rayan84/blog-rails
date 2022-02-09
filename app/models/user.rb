class User < ApplicationRecord
  # def recent_posts
  #   @recent_posts_lists = []
  #   User.all.each do |each_user|
  #     each_user.posts.each do |each_post|
  #      @recent_posts_lists.push(each_user.each_post.title)
  #     end
  #   end
  # end
  def self.recent_posts(parameters)
    @recent_posts = Post.limit(3).where(author_id: parameters).order(created_at: :desc)
  end

  has_many :posts
  has_many :likes
  has_many :comments
end
