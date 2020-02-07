class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :rating, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
    validate :guest_uniqueness

    def guest_uniqueness
        if compare_appearances.length > 0
            errors.add(:guest, "cannot appear on the same episode twice")
        end
    end

    def compare_appearances
        samples = Appearance.all.select do |appearance|
            self.guest == appearance.guest
        end
        samples.each do |sample|
            self.episode == sample.episode
        end
    end
end