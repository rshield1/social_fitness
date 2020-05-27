class CreateUserWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_workouts do |t|
      t.string :title
      t.string :content
      t.references :user
      t.references :workout
      t.timestamps
    end
  end
end
