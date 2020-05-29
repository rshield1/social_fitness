class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :rep_id
      t.timestamps
    end
  end
end
