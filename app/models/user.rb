class User < ApplicationRecord
  
  def recent_posts
    @recent_posts_lists = []
    User.all.each do |each_user|
      each_user.posts.each do |each_post|
       @recent_posts_lists.push(each_user.each_post.title)
      end
    end
  end

  has_many :posts
  has_many :likes
  has_many :comments
end
