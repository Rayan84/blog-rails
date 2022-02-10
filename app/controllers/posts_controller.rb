class PostsController < ApplicationController
  def index
    @user = User.all.find(params[:user_id])
    @last_user = User.last
    @posts = []
    Post.all.each do |post|
      @posts.push(post.title) if post.author_id.to_s == params[:user_id]
    end
  end

  def show
    @user = User.all.find(params[:user_id])
    @post = Post.find_by(author: params[:user_id], id: params[:id])
    @recent_comments = Post.limit(3).where(author_id: params[:id]).order(created_at: :desc)
  end

  def update_posts_counter
    @update_counter = Post.update_counter(params[:user_id])
  end

  def update_comments_counter
    @comments_counter = Comment.comments_counter(params[:id])
  end

  def update_likes_counter
    Like.likes_counter(params[:id])
  end
end
