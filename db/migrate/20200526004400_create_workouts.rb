class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.integer :difficulty
      t.references :category
      t.references :user
      t.timestamps 
    end
  end
end
