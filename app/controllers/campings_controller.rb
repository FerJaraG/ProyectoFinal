class CampingsController < ApplicationController
  before_action :set_camping, only: [:show, :edit, :update, :destroy,:admin_camp]

  def index
  	@campings = Camping.all
  end

  def my_campings
      @campings = Camping.where(user_id: current_user)
  end

  def home
    
  end

  def new
    @camping = Camping.new
    @country = Country.all
  end

  def create
  	camping = Camping.new(camping_params)
    camping.user = current_user
    if camping.save
      redirect_to camping_path(camping), notice: 'Se creo camping con exito'
    else
      redirect_to new_camping_path, notice: 'No se pudo crear camping :('
    end
  end

  def show
    @plans_high = @camping.plans.where(season_id: 1).pluck(:person_type,:price)
    @plans_low = @camping.plans.where(season_id: 2).pluck(:person_type,:price)
    @services = @camping.services
    @reviews = Review.where(booking_id: Booking.where(campsite_id: Campsite.where(camping_id: @camping)))
  end

  def edit
    @country = Country.all
  end

  def update
    if @camping.update(camping_params)
      redirect_to camping_path(@camping), notice: 'El Camping se ha actualizado con exito'
    else
      redirect_to edit_camping_path(@camping.id), notice: 'No se ha podido actualizar el registro'
    end
  end

  def destroy
    @camping.destroy
    redirect_to campings_path, notice: 'El registro se ha eliminado con exito'
  end

  def admin_camp
    
  end
  
  def return_cities
    @cities = City.where(region_id: params[:region_id])
  end

  def return_communes
    @communes = Commune.where(city_id: params[:city_id])
  end

  private

  def set_camping
    @camping = Camping.find(params[:id])
  end
  
  def camping_params
    params.require(:camping).permit(:name,:description,:user_id, :phone, :email,:web,:facebook, :tourism,:camping_type,:commune_id,:address,:latitude,:longitude,:rules, {images: []}, service_ids:[])
  end
  
end
