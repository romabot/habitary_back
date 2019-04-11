class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :target, :hard

  has_many :dayskills
  has_many :days, through: :dayskills
end
