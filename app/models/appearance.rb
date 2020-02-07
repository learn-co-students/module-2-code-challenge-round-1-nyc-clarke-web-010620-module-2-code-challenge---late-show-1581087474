class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, numericality: {greater_than_or_equal_to: 1, message: "error: The appearance rating cannot be less than 1"}
    validates :rating, numericality: {less_than_or_equal_to: 5, message: "error: The appearance rating cannot be more than 5"}
end
