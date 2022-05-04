class CreateComments < ActiveRecord::Migration[5.2]
  def up
    create_table :comments do |t|
      t.text :content, null: false
      t.references :place, index: false, null: false, foreign_key: true
      t.references :user, index: false, null: false, foreign_key: true
      t.references :place

      t.timestamps null: false
    end
  end

  def down
    drop_table :comments
  end
end
