class BusinessesController < ApplicationController
  def new
  end

  def create
  end

  def show
    @business = Business.find(params[:id])
  end

  def update
  end
end
