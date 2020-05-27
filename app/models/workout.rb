class Workout < ApplicationRecord
    has_many :users
    has_many :users, through: :posts

    accepts_nested_attributes_for :post
end
