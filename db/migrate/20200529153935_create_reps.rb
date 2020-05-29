class CreateReps < ActiveRecord::Migration[6.0]
  def change
    create_table :reps do |t|
        t.integer :workout_id
        t.integer :move_id
        t.string :quantity
      t.timestamps
    end
  end
end
