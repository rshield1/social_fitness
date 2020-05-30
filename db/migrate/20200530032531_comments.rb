class Comments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.integer :workout_id
      t.timestamps
    end
  end
end
