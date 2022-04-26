class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id, null: false
      t.integer :reference_id, null: false
      t.integer :reference_type, null: false

      t.timestamps
    end
  end
end
