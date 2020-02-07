class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    #validator for the floor and ceiling of rating input
    validates :rating, numericality: {greater_than: 0, less_than_or_equal_to: 5}
    #validator to make sure a guest can only appear once in an episode - returns a custom error message
    validates :guest_id, uniqueness: { scope: :episode_id,
    message: "Guest can only appear in an episode once!" }
end
