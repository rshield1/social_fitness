class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :description
      t.integer :time
      t.integer :difficulty
      t.integer :user_id
      t.integer :category_id
      
      t.timestamps 
    end
  end
end
