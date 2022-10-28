class ReviewsController < ApplicationController

    def index
        reviews = Review.all

        render json: ReviewSerializer.new(reviews).serialized_json
    end

    def show
        review = Review.find(params[:id])

        render json: ReviewSerializer.new(review).serialized_json
    end

    def create 
        review.Review.new(review_params)

        if review.save
            render json: ReviewSerializer.new(review).serialized_json
        else
            render json: { error: review.errors.messages }, status: 422
        end
    end

    def destroy
        review = Review.find(params[:id])

        if review.destroy
            head :no_content
        else
            render json: { error: review.errors.messages }, status: 422
        end
    end

    private

    def review_params
        params.require(:review).permit(:title, :description, :score, :game_id)
    end

end