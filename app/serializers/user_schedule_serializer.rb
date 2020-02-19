class UserScheduleSerializer < ActiveModel::Serializer
  belongs_to :user 
  belongs_to :schedule
  attributes :id, :user_id, :schedule_id
end
