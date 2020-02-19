class DestinationSchedulesController < ApplicationController

    def index
        destination_schedules = DestinationSchedule.all 
        render json: destination_schedules
    end
end
