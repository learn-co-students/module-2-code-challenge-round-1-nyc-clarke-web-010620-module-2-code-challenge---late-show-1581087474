class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def avg_rating 
        total_rating = 0
        self.appearances.each do |app|
            total_rating += app.rating
        end

        (total_rating.to_f/self.appearances.count.to_f).round(2)
      end
end
