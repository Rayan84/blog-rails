class PostsController < ApplicationController
  def index
    @user = User.all.find(params[:user_id])
    @posts = []
    # @ids = []
    # @parameter = params[:user_id]
    # @note = []

    Post.all.each do |post|
    #  @note.push("looping #{post.author_id} #{params[:user_id]}")
      if post.author_id.to_s == params[:user_id]
    #    @note.push('if')
    #    @ids.push(post.author_id)
        @posts.push(post.title)
      #find_by(author: params[:id])
      end
    end
  end

  def show
    
  end
end
