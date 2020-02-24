class UserSchedulesController < ApplicationController

    def index
        user_schedules = UserSchedule.all
        render json: user_schedules
    end

    def create
        user_schedule = UserSchedule.create(user_schedule_params)
        # byebug
        render json: user_schedule
    end

    def destroy
        user_schedule = UserSchedule.find(params[:id])
        user_schedule.destroy
        render json: user_schedule
    end
    

    private
    def user_schedule_params
        params.require(:user_schedule).permit(:user_id, :schedule_id)
    end
end
