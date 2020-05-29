class Workout < ApplicationRecord
    belongs_to :user

    has_many :reps
    has_many :moves, through: :reps
    

    accepts_nested_attributes_for :moves
    accepts_nested_attributes_for :reps
   
end
