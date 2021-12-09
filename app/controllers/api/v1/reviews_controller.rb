module Api
  module V1
    class ReviewsController < ApplicationController
			protect_from_forgery with: :null_session

      # POST /api/v1/reviews
      def create
          review = Review.new(review_params)

          if review.save
            render json: ReviewSerializer.new(review).serialized_json
          else
            render json: errors(review), status: 422
          end
      end

      private

      def review_params
          params.require(:review).permit(:title, :description, :score, :movie_id)
      end

      def errors(record)
          { errors: record.errors.messages }
      end
    end
  end
end