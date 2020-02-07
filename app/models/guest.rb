class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances


    def sort_shows_by_rating
        self.appearances.sort_by{|app| -app.rating}
    end

end
