class DaySerializer < ActiveModel::Serializer
  attributes :id, :name, :dayskills

   belongs_to :user
   has_many :skills, through: :dayskills
end
