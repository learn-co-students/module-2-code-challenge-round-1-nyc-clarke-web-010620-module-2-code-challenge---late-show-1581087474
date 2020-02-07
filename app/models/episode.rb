class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        a = self.appearances.inject(0){|sum,a| sum + a.rating}.to_f
        b= self.appearances.count
        c = a/b
        c
    end
end
