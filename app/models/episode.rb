class Episode < ApplicationRecord

    has_many :appearances
    has_many :guests, through: :appearances


    def avg_rating
        if self.appearances.count != 0
            self.appearances.map{|appearance| appearance.rating}.inject(:+) / self.appearances.count
        end 
    end

    # def sorted  
    #     self.appearances.episodes.sort_by{|episode| episode.rating}
    # end  
    
end
