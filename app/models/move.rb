class Move < ApplicationRecord
    has_many :reps
    has_many :workouts, through :reps

    accepts_nested_attributes_for :workouts
end
