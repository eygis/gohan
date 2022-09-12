class ReviewsController < ApplicationController

    def new
        @review = Review.new
        @business_id = params[:id]
    end

    def create
        @review = Review.new(review_params)
    end

    private

    def review_params
        params.require(:review).permit(:review, :rating, :business_id)
    end
end
