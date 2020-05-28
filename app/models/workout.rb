class Workout < ApplicationRecord
    belongs_to :category
    belongs_to :user

    has_many :user_workouts
    has_many :users, through: :user_workouts
    

    accepts_nested_attributes_for :category
   
end
