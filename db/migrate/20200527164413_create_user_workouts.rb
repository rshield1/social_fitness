class CreateUserWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_workouts do |t|
      t.string :title
      t.string :content
      t.belongs_to :user
      t.belongs_to :workout
      t.timestamps
    end
  end
end
