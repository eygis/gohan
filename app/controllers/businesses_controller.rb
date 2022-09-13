class BusinessesController < ApplicationController

  before_action :require_login

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    if @business.save
      redirect_to business_path(@business)
    else
      flash[:error] = 'invalid'
      redirect_to new_business_path
    end
  end

  def show
    @business = Business.find(params[:id])
    @reviews = @business.reviews
  end

  def update
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = 'You must be logged in to do that.'
      redirect_to root_path
    end
  end

  def business_params
    params.require(:business).permit(:business_name, :business_city, :business_votes, :business_rating)
  end
end
