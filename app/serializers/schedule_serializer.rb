class ScheduleSerializer < ActiveModel::Serializer
  has_many :user_schedules
  has_many :users, through: :user_schedules
  has_many :destination_schedules
  has_many :destinations, through: :destination_schedules
  attributes :id, :name, :location
end
