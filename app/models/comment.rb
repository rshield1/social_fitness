class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :workout

  validates :title, presence: true
  validates :content, presence: true


  validates :workout, uniqueness: { scope: :user, message: "only 1 comment for this post per user" }

  

end
