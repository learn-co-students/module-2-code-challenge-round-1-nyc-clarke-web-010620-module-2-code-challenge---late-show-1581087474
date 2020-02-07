class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    # def average_rating
    #     app_total = 0
    #         self.appearaneces.each do |appearance|
    #             app_total += appearance.rating
    #         end
        
    #     return app_total / self.appearances.count 
    # end
end
