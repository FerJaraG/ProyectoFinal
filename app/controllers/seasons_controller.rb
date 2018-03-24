class SeasonsController < ApplicationController
	before_action :authenticate_user!

	def index
		@seasons = Season.all
	end

	def new
		@season = Season.new
	end

	def create
		season = Season.new(season_params)
		season.save
	end

	private 

	def season_params 
		params.require(:season).permit(:name,:start_date,:end_date)
	end

end
