class DestinationsController < ApplicationController

    def index
        destinations = Destination.all 
        render json: destinations
    end

    def create
        destination = Destination.find_or_create_by(destination_params)
        render json: destination
    end

    private
    
    def destination_params
        params.require(:destination).permit(:name, :address, :category)
    end

end
