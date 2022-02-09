class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])

     @recent_posts = Post.limit(3).where(author_id: params[:id]).order(created_at: :desc)
  end
end


  #   @posts = []
  #     Post.all.each do |post|
  #     if post.author_id.to_s == params[:id]
  #       @posts.push(post)
  #      end
  #     end
  #  # @posts = Post.all
  #    @posts = Post.all.find_by(author_id: params[:user_id])