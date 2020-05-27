class User < ApplicationRecord
    has_many :workouts
    has_many :workouts, through: :posts
    validates :username, uniqueness: true, presence: true
    validates :email, uniqueness: true, presence: true
    has_secure_password

    
end
