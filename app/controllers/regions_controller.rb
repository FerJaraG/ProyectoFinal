class RegionsController < ApplicationController
    def new
        @regions = Region.where(country_id: params[:country_id])
    end
end
