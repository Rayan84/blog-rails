require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'post model validations' do
    subject do
      Post.new
    end

    before { subject.save }

    it 'title presence' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'title should not exceed 250 char' do
      subject.title = 'post 1' * 251
      expect(subject).to_not be_valid
    end

    it 'Likes counter should be integer ' do
      subject.likes_counter = 1.7
      expect(subject).to_not be_valid
    end

    it 'Likes counter should be greater or equal to 0 ' do
      subject.likes_counter = -1
      expect(subject).to_not be_valid
    end

    describe 'post model method' do
      before { 10.times { |_comment| Comment.create(post_id: subject.id) } }
    end
  end
end
