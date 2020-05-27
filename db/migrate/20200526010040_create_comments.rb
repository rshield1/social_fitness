class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.boolean :like
      t.references :user, null: false, foreign_key: true
      t.references :user_workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
