class PostsController < ApplicationController
  def index
    @user = User.all.find(params[:user_id])
    @posts = []
    @comments = Comment.all
    @likes = Like.all
    Post.all.each do |post|
      @posts.push(post) if post.author_id.to_s == params[:user_id]
    end
  end

  def show
    @user = User.all.find(params[:user_id])
    @users = User.all
    @post = Post.find_by(author: params[:user_id], id: params[:id])
    @recent_comments = Post.limit(3).where(author_id: params[:id]).order(created_at: :desc)
    @comments = Comment.all
    @likes = Like.all
  end

  def five_comments(post_index)
    @arr = []
    @comments = Comment.limit(5).where(post_id: post_index).order(created_at: :desc)
    @comments.each do |comment|
      @arr.push(comment)
    end
    @arr
  end
  helper_method :five_comments
end
