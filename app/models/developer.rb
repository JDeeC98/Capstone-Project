class Developer < ApplicationRecord
    has_many :games
    has_many :genres, through: :games
end
