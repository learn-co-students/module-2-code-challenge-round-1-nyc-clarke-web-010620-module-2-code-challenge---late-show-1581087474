class Apperance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, numericality: { in: 1..5, only_integer: true }
    
end
