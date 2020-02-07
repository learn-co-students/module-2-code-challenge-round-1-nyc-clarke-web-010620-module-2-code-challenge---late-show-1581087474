class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def best_shows
         self.appearances.order(numeric_rating: :desc)
    end 

    
end
