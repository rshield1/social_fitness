class User < ApplicationRecord
    has_many :comments
    has_many :posted_workouts, through: :comments, source: :ice_cream
    #what is this referring to??

    has_many :workouts #created workouts
    
    validates :username, uniqueness: true, presence: true, length: { minimum: 5}
    validates :email, uniqueness: true, presence: true
    validates :password, length: { in: 6..20 }
    
    has_secure_password

    

    def self.create_google_omniauth(auth)
        self.find_or_create_by(email: auth[:info][:email]) do |u|
            u.username = auth["info"]["name"]
            u.password = SecureRandom.hex
        end   
    end

end
