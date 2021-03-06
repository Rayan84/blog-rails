class LikesController < ApplicationController
  def new
    @like = Comment.new
  end

  def create
    @like = Like.create(author_id: current_user.id, post_id: params[:post_id])
  end

  def update; end

  private

  def like_params
    params.require(:like).permit(:post_id)
  end
end
