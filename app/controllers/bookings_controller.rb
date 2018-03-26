class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :edit, :update, :destroy]
    before_action :set_camping, only: [:index,:create,:edit, :update,:show,:new]
    before_action :authenticate_user!

    def index
        @bookings = Booking.all
    end
  
    def new
        @booking = Booking.new
    end
  
    def create
        campsite = @camping.campsites.where(status: false).first
        booking = Booking.new(booking_params)
        booking.user = current_user
        booking.camping = @camping
        booking.campsite = campsite
        values = booking.value_calc
        booking.price_per_day = values[:adult] + values[:child]
        booking.total_price = booking.price_per_day * ((booking.check_out - booking.check_in).to_i)
        booking.booking_date = Date.today
        
        if booking.save
          if campsite.update(status: true)
            redirect_to prepayment_camping_bookings_path, notice: "Se ha reservado con exito"
          else 
            redirect_to new_camping_booking_path, notice: "Hubo un error al actualizar el campsite"
          end
        else
          redirect_to new_camping_booking_path(@camping), alert: "Error al reservar camping"
        end
    end

    def prepayment
        
    end
  
    def show
    end
  
    def edit
    end
  
    def update
      if @booking.update(booking_params)
        redirect_to @booking, notice: 'La reserva se ha actualizado con exito'
      else
        redirect_to edit_booking_path(@booking.id), notice: 'No se ha podido actualizar el registro'
      end
    end
  
    def destroy
      @booking.destroy
      redirect_to root_path, notice: 'El registro se ha eliminado con exito'
    end
  
    def search
    end
  
    private

    def set_booking
        @booking = Booking.find(params[:id])
      end
  
    def set_camping
      @camping = Camping.find(params[:camping_id])
    end
    
    def booking_params
      params.require(:booking).permit(:check_in,:check_out,:camping_id, :price_per_day,:total_price,:booking_date,:adults_quantity,:kids_quantity,:observations,:status)
    end
end
