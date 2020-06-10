class User < ApplicationRecord
    has_many :comments
    has_many :workouts, through: :comments

    has_many :workouts #created workouts
    
    validates :username, uniqueness: true, presence: true, length: { minimum: 5}
    validates :email, uniqueness: true, presence: true
    validates :password, length: { in: 6..20 }
    validates :image, presence: true
    
    has_secure_password

    has_one_attached :image

    

    def self.create_google_omniauth(auth)
        self.find_or_create_by(email: auth[:info][:email]) do |u|
            
            u.username = auth["info"]["name"]
            u.password = SecureRandom.hex
            u.image = auth["info"]["image"] 
    
        end   
    end

end
