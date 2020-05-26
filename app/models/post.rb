class Post < ApplicationRecord
  belongs_to :user
  belongs_to :workout
  has_many :comments
end
