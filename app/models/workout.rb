class Workout < ApplicationRecord
    has_many :users
    has_many :users, through: :posts
    belongs_to :post

    accepts_nested_attributes_for :post
end
