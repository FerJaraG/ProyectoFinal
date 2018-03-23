class CampsitesController < ApplicationController
	before_action :set_campsite, only: [:show, :edit, :update, :destroy]
	before_action :set_camping, only: [:index,:create,:edit, :update,:show,:new]

	def index
		@campsites = Campsite.all 
	end

	def new
		@campsite = Campsite.new 
	end

	def create
		campsite = Campsite.new(campsite_params)
    	campsite.camping_id = params[:camping_id]

    	if campsite.save
      		redirect_to camping_campsite_path(@camping,campsite.id), notice: 'Se creo sitio con exito'
    	else
      		redirect_to new_camping_campsite_path, notice: 'No se pudo crear sitio :('
    	end
	end

	def show

	end

	def edit
	end

	def update
		if @campsite.update(campsite_params)
			redirect_to camping_campsite_path, notice: 'El sitio se ha actualizado con exito'
		else
			redirect_to edit_camping_campsite_path(@campsite.id), notice: 'No se ha podido actualizar el registro'
		end
	end

	def destroy
		@campsite.destroy
		redirect_to root_path, notice: 'El registro se ha eliminado con exito'
	end

	private

	def set_campsite
      @campsite = Campsite.find(params[:id])
    end

    def set_camping
      @camping = Camping.find(params[:camping_id])
    end

	def campsite_params
		params.require(:campsite).permit(:identifier,:description, :camping_id)
	end
end
