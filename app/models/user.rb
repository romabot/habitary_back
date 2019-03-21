class User < ApplicationRecord
    has_secure_password 
    has_many :days
    has_many :skills
    validates :username, uniqueness: { case_sensitive: false }
end
