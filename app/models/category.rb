class Category < ApplicationRecord
    has_many :workouts



    scope :filter_duplicates, -> { group(:name).having("count(*) >= 1")}
end
