class BookingsController < ApplicationController
    def create
        booking = Booking.create(booking_params)
        if story.valid?
          render json: booking
        else
            render json: {error: booking.errors.full_messages}, status: 400
        end
    end

    def destroy
        Booking.destroy(params[:id])
    end

    private

    def booking_params
        params.require(:booking).permit(:time, :date, :user_id, :first_session)
    end

end
