class Skill < ApplicationRecord
    has_many :dayskills
    has_many :days, through: :dayskills
end
