class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :dayskills
  has_many :days, through: :dayskills
end
