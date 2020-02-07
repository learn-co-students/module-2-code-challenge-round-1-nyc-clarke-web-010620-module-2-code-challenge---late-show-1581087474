class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :rating, numericality: {greater_than: 1}
    validates :rating, numericality: {less_than: 5}

    def return_guest(id)
        Guest.find(id)
    end

     def return_episode(id)
        Episode.find(id)
    end
end