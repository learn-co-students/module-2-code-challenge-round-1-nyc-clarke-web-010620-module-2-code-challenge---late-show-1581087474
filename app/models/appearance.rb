class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates_inclusion_of :rating, :in => 1..5, message: "must be between 1 and 5"
  validates :rating, presence: :true
  validates_uniqueness_of :guest, scope: :episode, message: "has already appeared in this Episode"


end
