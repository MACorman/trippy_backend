class Destination < ApplicationRecord
    has_many :destination_schedules
    has_many :schedules, through: :destination_schedules
end
