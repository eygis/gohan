class ReviewsController < ApplicationController

    def new
        @review = Review.new
        @business_id = params[:id]
    end

    def create
        @review = Review.new(review_params)
        if @review.save
            redirect_to business_path(review_params[:business_id])
        else
            flash[:error] = 'invalid'
            redirect_to business_path(review_params[:business_id])
        end
    end

    private

    def review_params
        params.require(:review).permit(:review, :reviewer, :rating, :business_id)
    end
end
