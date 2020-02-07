class Apperance < ApplicationRecord
    belongs_to :guest 
    belongs_to :episode 


    validates :rating, numericality: {greater_than: 0, less_than: 6 }
    validates :guest_id, uniqueness: true 


#     A Guest should only appear on a given Episode once.

# - Add a validation to Appearance to ensure that each Guest can only appear once on the same Episode.
# - Update the error handling on the Appearance creation form to show this validation error.


#     The rating on an Appearance should be between 1 and 5 (inclusive - `1` and `5` are okay).

# - Add a validation to ensure that the rating is between 1 and 5.
# - Add handling for this error to the Appearance create action.
# - The validation error should be shown on the Appearance creation form when a user attempts to save an appearance with an invalid rating.

end
