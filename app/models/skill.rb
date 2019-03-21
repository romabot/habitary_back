class Skill < ApplicationRecord
    belongs_to :user
    has_many :dayskills
    has_many :days, through: :dayskills
end
