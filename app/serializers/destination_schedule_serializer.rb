class DestinationScheduleSerializer < ActiveModel::Serializer
  belongs_to :destination 
  belongs_to :schedule 
  attributes :id, :destination_id, :schedule_id
end
