class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :rating, numericality: {greater_than: 0}
    validates :rating, numericality: {less_than: 6}
    validates :episode_id, uniqueness: { scope: :guest_id,
    message: "- Guest can only appear once on an episode." }

    def return_guest(id)
        Guest.find(id)
    end

     def return_episode(id)
        Episode.find(id)
    end

    
end