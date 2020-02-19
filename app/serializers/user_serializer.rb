class UserSerializer < ActiveModel::Serializer
  has_many :user_schedules
  has_many :schedules, through: :user_schedules
  has_many :destinations, through: :schedules
  attributes :id, :username, :password, :image
end
