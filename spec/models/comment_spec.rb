require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'comment model methods' do
    user1 = User.new
    post1 = Post.new(title: 'post_test', text: 'this is post test', author: user1, likes_counter: 8)
    subject do
      Comment.new
    end

    before { subject.save }

    it 'title presence' do
      subject.text = nil
      expect(subject).to_not be_valid
    end
  end
end
