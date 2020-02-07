class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        ratings = self.appearances.map do |appearance|
            appearance.rating
        end
            
            average = ratings.inject{ |sum, n| sum + n } 
            # average = average / ratings.count
    end
end
