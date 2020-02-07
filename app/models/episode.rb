class Episode < ApplicationRecord
    has_many :apperances
    has_many :guests, through: :apperances


    def avg_rating 
        total = 0
        self.appearances.each do |app|
            total += app.rating 
        end 
        total / self.appearances.count 
    end 

    
end 
