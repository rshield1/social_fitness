class UserWorkout < ApplicationRecord
    belongs_to :user
    belongs_to :workout
    has_many :comments

    accepts_nested_attributes_for :workout
end
