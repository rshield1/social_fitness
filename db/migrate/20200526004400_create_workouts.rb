class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.integer :difficulty
      t.references :category_id
      t.references :user_id 
      t.timestamps 
    end
  end
end
