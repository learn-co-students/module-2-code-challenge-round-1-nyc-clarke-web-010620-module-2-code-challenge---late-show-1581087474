class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def avg_rating
        # byebug

        if self.appearances.length !=0
            sum = self.appearances.reduce(0) {|sum, a| sum + a.appearance_rating }
        avg = sum / self.appearances.length
         else
            avg = 0
        end
        avg
    end


end
