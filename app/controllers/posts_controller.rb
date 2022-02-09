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
    #@post_number = params
    @user = User.all.find(params[:user_id])
    @post = Post.find_by(author: params[:user_id], id: params[:id])
   # @recent_comments = Comment.limit(5).where(post_id: params[:id]).order(created_at: :desc)
    @recent_comments = Post.recent_comments(params[:id])
  end

  def update_counter
    @update_counter = Post.update_counter(params[:user_id])
  end

end
