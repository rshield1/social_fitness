class Category < ApplicationRecord
    has_many :workouts



    scope :filter_duplicates, -> { group(:name).having("count(*) >= 1")}


    def self.order_by_size
        order(workouts: :desc)
    end
end
