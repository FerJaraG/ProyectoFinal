class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :edit, :update, :destroy,:prepayment]
    before_action :set_camping, only: [:index,:create,:edit, :update,:show,:new]
    

    def index
      @bookings = Booking.where(camping_id: @camping)
    end

    def user_bookings
      @user_bookings = Booking.where(user_id: current_user)
    end
  
    def new
      authorize! :new, Booking
      @booking = Booking.new
    end
  
    def create
      campsite = @camping.campsites.where(status: false).first

      if campsite != nil
          booking = Booking.new(booking_params)
          booking.user = current_user
          booking.camping = @camping
          booking.campsite = campsite
          values = booking.value_calc
          booking.price_per_day = values[:adult] + values[:child]
          booking.total_price = booking.price_per_day * ((booking.check_out - booking.check_in).to_i)
          booking.booking_date = Date.today
        
          booking.save
            redirect_to prepayment_camping_booking_path(@camping,booking.id), notice: "Se ha reservado con exito"
          else
            redirect_to new_camping_booking_path(@camping), alert: "No se pudo guardar reserva."
          end
       end
    end

    def prepayment
      authorize! :new, Booking
    end
  
    def show
    end
  
    def edit
      authorize! :new, Booking
    end
  
    def update
      if @booking.update(booking_params)
        redirect_to edit_camping_booking_path(@camping, @booking.id), notice: 'La reserva se ha actualizado con exito'
      else
        redirect_to edit_camping_booking_path(@camping, @booking.id), notice: 'No se ha podido actualizar el registro'
      end
    end
  
    def destroy
      @booking.destroy
      redirect_to campings_path, notice: 'El registro se ha eliminado con exito'
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
