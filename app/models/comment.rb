class Comment < ApplicationRecord

  belongs_to :author, :class_name => "User"
  belongs_to :post
  
  def self.comments_counter(parameters)
    post = Post.find_by(id: parameters)
    post.comments_counter = post.Update(comments_counter: comments_counter + 1)
  end
end
