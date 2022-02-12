class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(author_id: current_user.id, text: comment_params[:text], post_id: params[:post_id])
    redirect_back(fallback_location: root_path)
    flash.alert = 'Comment posted...'
  end

  def update; end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
