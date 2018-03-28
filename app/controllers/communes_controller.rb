class CommunesController < ApplicationController
    def new
        @communes = Commune.where(city_id: params[:city_id])
    end
end
