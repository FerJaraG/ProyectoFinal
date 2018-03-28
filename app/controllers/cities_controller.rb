class CitiesController < ApplicationController
    def new
        @cities = City.where(region_id: params[:region_id])
    end
end
