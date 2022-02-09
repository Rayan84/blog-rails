class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'

  def self.update_counter(parameters)
    @user = User.all.find(parameters)
    @user.update(posts_counter: posts_counter + 1)
  end

  def self.recent_comments(parameters)
    @recent_comments = Comment.limit(5).where(post_id: parameters).order(created_at: :desc)

  end
end
