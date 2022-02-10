class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  def self.update_counter(parameters)
    @user = User.all.find(parameters)
    @user.update(posts_counter: posts_counter + 1)
  end

  def recent_comments
    @recent_comments = comments.order(created_at: :desc).limit(5)
  end
end
