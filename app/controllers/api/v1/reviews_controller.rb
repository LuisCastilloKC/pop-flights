module Api
    module V1
        class ReviewsController < ApplicationController
            
            def create
                review = Review.new(review_params)

                if review.save
                    render json: ReviewSerializer.new(review).serialized_json
                else
                    render json: { errors: review.errors.message }, status: 422
                end
            end

            private

            def review_params
                params.require(:review).permit(:title, :descripion, :score, :airline_id)
            end
        end
    end
end