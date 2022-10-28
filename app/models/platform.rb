class Platform < ApplicationRecord
    has_many :games
    has_many :developers, through: :games
    has_many :genres, through: :games
end
