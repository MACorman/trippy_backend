class SchedulesController < ApplicationController

    def index
        schedules = Schedule.all 
        render json: schedules
    end

    def show 
        schedule = Schedule.find(params[:id])
        render json: schedule
    end 

    def create
        schedule = Schedule.find_or_create_by(schedule_params)
        render json: schedule
    end

    def destroy
        schedule = Schedule.find(params[:id])
        schedule.destroy
        render json: schedule
    end

    private
    def schedule_params
        params.require(:schedule).permit(:name, :location, :date)
    end

end

