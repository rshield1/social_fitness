class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :type
      t.integer :sets
      t.integer :reps
      t.integer :difficulty
      # add foreign key
      t.references :user
      t.timestamps
    end
  end
end
