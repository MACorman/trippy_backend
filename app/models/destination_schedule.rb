class DestinationSchedule < ApplicationRecord
    belongs_to :destination 
    belongs_to :schedule 
end
