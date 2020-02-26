class DestinationSerializer < ActiveModel::Serializer
  has_many :destination_schedules
  has_many :schedules, through: :destination_schedules
  attributes :id, :name, :address, :category, :time
end
