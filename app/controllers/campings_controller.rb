class CampingsController < ApplicationController
  def index
  	@campings = Camping.all
  end

  def search
  end

  def show
  end

  def new
  	@camping = Camping.new
    @regions = Region.all.map{|s|[s.name, s.id]}
    @cities = City.all.map{|s|[s.name, s.id]}
    @communes = Commune.all.map{|s|[s.name, s.id]}
  end

  def create
  	camping = Camping.new(camping_params)
    camping.user = current_user
    if camping.save
      redirect_to root_path, notice: 'Se creo camping con exito'
    else
      redirect_to campings_new_path, notice: 'No se pudo crear camping :('
    end
  end

  def return_cities
    @cities = City.where(region_id: params[:region_id])
  end

  def return_communes
    @communes = Commune.where(city_id: params[:city_id])
  end

  def camping_params
    params.require(:camping).permit(:name,:description,:user_id,:camping_type,:commune_id,:address,:latitude,:longitude,:rules)
  end
  
end
