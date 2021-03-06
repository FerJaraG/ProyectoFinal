class CampingsController < ApplicationController
  before_action :set_camping, only: [:show, :edit, :update, :destroy,:admin_camp]

  def index
    if params[:desitino] != ""
      @campings = Camping.where(commune_id: Commune.where("name LIKE ?", "%#{params[:destino]}%").select(:id)).page(params[:page]).per(9)
      @camps = Camping.where(commune_id: Commune.where("name LIKE ?", "%#{params[:destino]}%").select(:id)).count
    elsif params[:check_in] != "" and params[:check_out] != ""
      @campings = Camping.select(:id,:name,:commune_id).distinct.joins(:campsites).where.not(campsites: {id: Booking.where("(check_in <= ? and check_out >= ?) or (check_in < ? and check_out >= ?) or (? <= check_in and ? >= check_in)", params[:check_in],params[:check_out], params[:check_in], params[:check_in],params[:check_out],params[:check_in]).select(:campsite_id)}).where(commune_id: Commune.where("name LIKE ?", "%#{params[:destino]}%").select(:id)).page(params[:page]).per(9)
      @camps = Camping.select(:id).distinct.joins(:campsites).where.not(campsites: {id: Booking.where("(check_in <= ? and check_out >= ?) or (check_in < ? and check_out >= ?) or (? <= check_in and ? >= check_in)", params[:check_in],params[:check_out], params[:check_in], params[:check_in],params[:check_out],params[:check_in]).select(:campsite_id)}).where(commune_id: Commune.where("name LIKE ?", "%#{params[:destino]}%").select(:id)).count
    else
      @campings = Camping.order(:name).page(params[:page]).per(9)
      @camps = Camping.all.count
    end  
    
    if user_signed_in?
  		campings_map = Camping.near(current_user.address, 200, units: :km)
  	else
  		campings_map = Camping.all
  	end

	  @hash = Gmaps4rails.build_markers(campings_map) do |camping, marker|
		  marker.lat camping.latitude
		  marker.lng camping.longitude
    end

  end

  def my_campings
    @campings = Camping.where(user_id: current_user)
  end

  def home

  end

  def new
    authorize! :new, Camping
    @country = Country.all
    @camping = Camping.new
  end

  def create
    authorize! :create, Camping
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
    authorize! :edit, Camping
    @country = Country.all
  end

  def update
    authorize! :update, Camping
    if @camping.update(camping_params)
      redirect_to camping_path(@camping), notice: 'El Camping se ha actualizado con exito'
    else
      redirect_to edit_camping_path(@camping.id), notice: 'No se ha podido actualizar el registro'
    end
  end

  def destroy
    authorize! :destroy, Camping
    @camping.destroy
    redirect_to campings_path, notice: 'El registro se ha eliminado con exito'
  end

  def admin_camp
    
  end

  def find_address
    response = { address: Geocoder.address([params[:latitude], params[:longitude]]) }
    render json: response.to_json
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
    params.require(:camping).permit(:name,:description,:user_id, :phone, :email,:web,:facebook, :tourism,:camping_type,:commune_id,:address,:latitude,:longitude,:info, {images: []}, service_ids:[])
  end
  
end
