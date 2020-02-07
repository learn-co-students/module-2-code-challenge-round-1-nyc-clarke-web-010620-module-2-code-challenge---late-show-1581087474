class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances 

    def avg_rating
        sum =  self.appearances.map{|a| a.numeric_rating}.sum
        if sum !=0 
        avg = sum/ self.appearances.size
        end 
        avg
     end 
end
