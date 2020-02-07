class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances



    def ratings_sum
        self.appearances.reduce(0) {|n, appearance| n + appearance.rating }
    end
end
