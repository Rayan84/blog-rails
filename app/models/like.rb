class Like < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  def self.likes_counter(parameters)
    @post = Post.where(id: parameters)
    @post.update(likes_counter: likes_counter + 1)
  end
end
