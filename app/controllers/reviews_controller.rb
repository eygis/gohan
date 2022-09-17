class ReviewsController < ApplicationController

    def new
        @review = Review.new
        @business_id = params[:id]
    end

    def create
        @review = Review.new(review_params)
        @business_id = review_params[:business_id]
        if @review.save
            @business = Business.find_by(id: @business_id)
            if @business[:business_votes] != 0
                @business.update(business_rating: rating_calculator)
            else
                @business.update(business_rating: review_params[:rating])
            end
            Business.increment_counter(:business_votes, @business_id)
            redirect_to business_path(@business_id)
        else
            flash[:error] = @review.errors.full_messages
            redirect_to business_path(@business_id)
        end
    end

    private

    def review_params
        params.require(:review).permit(:review, :reviewer, :rating, :business_id)
    end

    def rating_calculator
        ((@business[:business_rating] * @business[:business_votes]) + review_params[:rating].to_i) / (@business[:business_votes] + 1)
    end
end
