class DaySerializer < ActiveModel::Serializer
  attributes :id, :name, :dayskills, :completed, :feelings

   belongs_to :user
   has_many :skills, through: :dayskills
end
