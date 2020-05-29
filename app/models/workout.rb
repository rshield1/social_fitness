class Workout < ApplicationRecord
    belongs_to :category
    belongs_to :user

    has_many :posts
    has_many :users, through: :posts
    

    accepts_nested_attributes_for :category
   
end
