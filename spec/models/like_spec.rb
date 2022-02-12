require 'rails_helper'

RSpec.describe Like, type: :model do
  user1 = User.new
  puts user1
  post1 = Post.new(title: 'post_test', text: 'this is post test', author: user1)
  subject do
    Like.new
  end
end
