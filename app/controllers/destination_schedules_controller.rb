class DestinationSchedulesController < ApplicationController

    def index
        destination_schedules = DestinationSchedule.all 
        render json: destination_schedules
    end

    def create
        destination_schedule = DestinationSchedule.create(destination_schedule_params)
        render json: destination_schedule
    end

    def destroy
        destination_schedule = DestinationSchedule.find(params[:id])
        destination_schedule.destroy
        render json: destination_schedule
    end

    private
    
    def destination_schedule_params
        params.require(:destination_schedule).permit(:destination_id, :schedule_id)
    end

end
