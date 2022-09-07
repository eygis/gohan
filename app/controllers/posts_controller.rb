class PostsController < ApplicationController
  def index
    @user = current_user
    @businesses = Business.all
  end
end
