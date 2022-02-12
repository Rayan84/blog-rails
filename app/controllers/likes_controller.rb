class LikesController < ApplicationController
  def new
    @like = Comment.new
  end

  def create
    @like = Like.new(author_id: current_user.id, post_id: params[:post_id])
    flash.alert = if @like.save
                    'Comment posted...'
                  else
                    'Comment failed...'
                  end
  end

  def update; end

  private

  def like_params
    params.require(:like).permit(:post_id)
  end
end
