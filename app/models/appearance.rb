class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :rating, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
    validate :guest_uniqueness

    def guest_uniqueness
        if compare_appearances.length > 1
            errors.add(:guest, "cannot appear on the same episode twice")
        end
    end

    def compare_appearances
        samples = Appearance.all.select do |appearance|
            appearance.guest == self.guest
        end
        samples.select do |sample|
            sample.episode == self.episode
        end
    end

    def self.order_by_rating
        self.all.sort_by {|appearance| appearance.rating}.reverse
    end

end