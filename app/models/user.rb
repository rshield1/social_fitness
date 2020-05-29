class User < ApplicationRecord

    has_many :workouts #created workouts
    has_many :moves, through :workouts
    
    validates :username, uniqueness: true, presence: true, length: { minimum: 5}
    validates :email, uniqueness: true, presence: true
    validates :password, length: { in: 6..20 }
    
    has_secure_password

    
end
