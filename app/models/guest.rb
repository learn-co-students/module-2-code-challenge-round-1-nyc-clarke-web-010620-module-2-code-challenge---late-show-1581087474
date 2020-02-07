class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def find_and_sort_appearances
        self.appearances.order(appearance_rating: :desc)
    end
end
