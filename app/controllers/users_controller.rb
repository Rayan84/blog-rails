class UsersController < ApplicationController
  def index
    @user = User.all
    @posts = Post.all
  end

  def show
    @total_posts = Post.where(author_id: params[:id]).count
    @user = User.find(params[:id])
    @recent_posts = Post.limit(3).where(author_id: params[:id]).order(created_at: :desc)
  end
end
