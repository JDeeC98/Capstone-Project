class Game < ApplicationRecord
    belongs_to :developer
    belongs_to :genre
    has_many :reviews
    has_many :platforms


    
end
