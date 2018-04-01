class PlansController < ApplicationController
	before_action :set_camping, only: [:index,:create,:edit, :update,:show,:new]
	before_action :set_plan, only: [:show, :edit, :update, :destroy]

	def index
		@plans = Plan.where(camping_id: @camping)
	end

	def new
		@plan = Plan.new 
		@seasons = Season.all.map{|s|[s.name, s.id]}
		@plans = Plan.all

	end

	def create
		plan = Plan.new(plan_params)
		plan.camping_id = params[:camping_id]

		if plan.save
      		redirect_to camping_plans_path, notice: 'Se creo plan con exito'
    	else
      		redirect_to new_camping_plan_path, notice: 'No se pudo crear plan :('
    	end
	end

	def edit
		@plans = Plan.all
		@seasons = Season.all.map{|s|[s.name, s.id]}
	end

	def update
		if @plan.update(plan_params)
			redirect_to camping_plans_path, notice: 'El plan se ha actualizado con exito'
		else
            redirect_to edit_camping_plan_path(@plan.id), notice: 'No se ha podido actualizar el registro'
		end
	end

	def destroy
		@plan.destroy
		redirect_to camping_plans_path, notice: 'El registro se ha eliminado con exito'
	end

	private

	def set_plan
      @plan = Plan.find(params[:id])
	end

    def set_camping
      @camping = Camping.find(params[:camping_id])
    end

	def plan_params
		params.require(:plan).permit(:person_type, :camping_id, :price, :season_id)
	end
end
