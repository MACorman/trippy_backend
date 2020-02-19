class UserSchedulesController < ApplicationController

    def index
        user_schedules = UserSchedule.all
        render json: user_schedules
    end
end
