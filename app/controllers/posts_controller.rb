class PostsController < ApplicationController
  def index
    @user = User.all.find(params[:user_id])
    @last_user = User.last
    @posts = []
    Post.all.each do |post|
      if post.author_id.to_s == params[:user_id]
        @posts.push(post.title)
      end
    end
  end

  def show
    
  end
end
