class Workout < ApplicationRecord
    belongs_to :user
    belongs_to :category

    has_many :comments
    has_many :users, through: :comments

    validates :title, presence: true
    validates :description, presence: true
    validates :time, presence: true
    validates :difficulty, presence: true
    validate :already_exists
    

    accepts_nested_attributes_for :category
    

    def already_exists
        Category.find_by(name: "")

    end
   
end
