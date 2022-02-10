class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @recent_posts = Post.limit(3).where(author_id: params[:id]).order(created_at: :desc)
  end
end
