class Day < ApplicationRecord
    belongs_to :user
    has_many :dayskills
    has_many :skills, through: :dayskills
end

