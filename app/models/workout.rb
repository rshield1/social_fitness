class Workout < ApplicationRecord
    belongs_to :user
    belongs_to :category

    has_many :comments
    has_many :users, through: :comments

    validates :title, presence: true
    validates :description, presence: true
    validates :time, presence: true
    validates :difficulty, presence: true
    validates :category, presence: true
    validate :already_exists
    

    accepts_nested_attributes_for :category

    scope :order_by_comments, -> { left_joins(:comments).group(:id).order("title desc")}
    

    def already_exists
        workout = Workout.find_by(title: title, category_id: category_id)
    if !!workout && workout != self
      errors.add(:title, 'has already been added for that category')
    end
    end

    #scope methods
    def self.order_by_difficulty
      order(difficulty: :desc)
    end

    def title_category

      "#{title} - #{category.name}"
    end

def category_attributes=(category_attributes)
  binding.pry
  #find or create category
  
end

   
end
