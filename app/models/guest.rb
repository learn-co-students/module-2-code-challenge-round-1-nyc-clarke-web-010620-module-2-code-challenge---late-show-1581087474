class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances


    def sort_appearances(appearances)

        appearances.sort_by{|app| app.rating }.reverse

    end
end
