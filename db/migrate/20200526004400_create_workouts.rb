class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :description
      t.integer :time
      t.integer :difficulty
      t.integer :move_id
      t.references :user
      t.timestamps 
    end
  end
end
