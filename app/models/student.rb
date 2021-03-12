class Student < ApplicationRecord
    has_many :commitments
    has_many :events, through: :commitments
end
