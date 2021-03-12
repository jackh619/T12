class Event < ApplicationRecord
    has_many :commitments
    has_many :students, through: :commitments
end
