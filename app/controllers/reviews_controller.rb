class ReviewsController < ApplicationController
    before_action :set_booking, only: [:index,:create,:edit, :update,:show,:new]
    before_action :set_camping, only: [:index,:create,:edit, :update,:show,:new]
	before_action :set_review, only: [:show, :edit, :update, :destroy]

	def index
		@reviews = Review.all
	end

	def new
        @review = Review.new 
	end

	def create
		review = Review.new(review_params)
		review.booking_id = @booking.id

		if review.save
      		redirect_to campings_path, notice: 'Se creo comentario con exito'
    	else
      		redirect_to new_camping_booking_review_path, notice: 'No se pudo crear comentario :('
    	end
	end

	def edit
	end

	def update
	end

	def destroy
		@review.destroy
		redirect_to new_camping_booking_review_path, notice: 'El registro se ha eliminado con exito'
	end

	private

	def set_review
      @review = Review.find(params[:id])
	end

    def set_booking
        @booking = Booking.find(params[:booking_id])
    end

    def set_camping
        @camping = Camping.find(params[:camping_id])
    end

	def review_params
		params.require(:review).permit(:comment, :ranking, :title, :booking_id, :camping_id)
	end
end
