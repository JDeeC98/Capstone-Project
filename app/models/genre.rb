class Genre < ApplicationRecord
    has_many :games
    has_many :developers, through: :games
end
