class Workout < ApplicationRecord
    belongs_to :user
    belongs_to :category

    has_many :comments
    has_many :users, through: :comments
    

    accepts_nested_attributes_for :category
    
   
end
