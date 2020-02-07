class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, numericality: {greater_than: 0, less_than: 5}
    #could not get the second validation
    
end
