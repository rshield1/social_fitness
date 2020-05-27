class User < ApplicationRecord
    has_many :user_workouts
    has_many :workouts, through: :user_workouts
    
    validates :username, uniqueness: true, presence: true
    validates :email, uniqueness: true, presence: true
    
    has_secure_password

    
end
