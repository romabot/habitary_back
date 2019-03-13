class DayskillSerializer < ActiveModel::Serializer
  attributes :id, :day_id, :skill_id, :name

  belongs_to :day
  belongs_to :skill
end
