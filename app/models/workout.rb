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
    


    #scope methods
    scope :order_by_comments, -> { left_joins(:comments).group(:id).order("id asc")}

     
    def self.order_by_difficulty
      order(difficulty: :desc)
    end   

    def self.by_user(user_id)
      where(user: user_id)
    end

    def self.today
      where("created_at >=?", Time.zone.today.beginning_of_day)
    end
     
    def self.past
      where("created_at <?", Time.zone.today.beginning_of_day)
    end








    def already_exists
        workout = Workout.find_by(title: title, category_id: category_id)
    if !!workout && workout != self
      errors.add(:title, 'has already been added for that category')
    end
    end



    def title_category
     "#{title} - #{category.name}"
    end


    def category_attributes=(hash)
      category = Category.find_or_create_by(name: hash[:name])
      #push it into workout
      self.category = category
    end


   
end
