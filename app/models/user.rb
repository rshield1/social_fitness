class User < ApplicationRecord
    has_many :comments
    has_many :posted_workouts, through: :comments, source: :ice_cream
    #what is this referring to??

    has_many :workouts #created workouts
    
    validates :username, uniqueness: true, presence: true, length: { minimum: 5}
    validates :email, uniqueness: true, presence: true
    validates :password, length: { in: 6..20 }
    
    has_secure_password

    
end
