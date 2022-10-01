class PostsController < ApplicationController
  def index
    @user = current_user
    @businesses = params[:search] ? Business.where("lower(business_name) LIKE ?","%" + params[:search].downcase + "%") : Business.all
  end
end
