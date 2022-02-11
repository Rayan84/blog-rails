class ApplicationController < ActionController::Base
  def current_user
    User.first
  end

  @posts_count = Post.count
end
