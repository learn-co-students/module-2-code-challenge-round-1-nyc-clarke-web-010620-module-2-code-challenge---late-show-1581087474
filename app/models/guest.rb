class Guest < ApplicationRecord
    has_many :apperances
    has_many :episodes, through: :apperances


    
    def sort_episodes
        sorted = self.episodes.rating.sort { |a, b| b <=> a }
        sorted 
    end 
    
end


# On the Guest show page, order the Episodes by the Appearance rating so that the highest rated shows first in the list.



