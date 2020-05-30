class Move < ApplicationRecord
    has_many :reps
    has_many :workouts, through: :reps

    
end
