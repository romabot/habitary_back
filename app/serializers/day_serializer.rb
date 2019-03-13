class DaySerializer < ActiveModel::Serializer
  attributes :id, :name

   belongs_to :user
   has_many :dayskills
   has_many :skills, through: :dayskills
end
