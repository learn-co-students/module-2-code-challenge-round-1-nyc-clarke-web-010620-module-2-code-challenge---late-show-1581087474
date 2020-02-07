class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :rating, numericality: {greater_than: 1}
    validates :rating, numericality: {less_than: 5}
    validates :episode_id, uniqueness: { scope: :guest_id,
    message: "Guest can only appear on one show" }

    def return_guest(id)
        Guest.find(id)
    end

     def return_episode(id)
        Episode.find(id)
    end

    
end