class Workout < ApplicationRecord
    has_many :users
    has_many :users, through: :posts
end
