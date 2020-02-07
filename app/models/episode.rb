class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

#logic for the average rating for an episode
    def average_rating
        ratings = self.appearances.map{|appearance| appearance.rating}
        if ratings.any?
            ratings.sum / ratings.count
        end
    end
end
