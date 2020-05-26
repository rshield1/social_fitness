class User < ApplicationRecord
    has_many :workouts
    has_many :workouts, through: :posts
end
