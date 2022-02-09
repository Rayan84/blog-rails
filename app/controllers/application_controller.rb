class ApplicationController < ActionController::Base
  def current_user
    return User.first
  end
end
