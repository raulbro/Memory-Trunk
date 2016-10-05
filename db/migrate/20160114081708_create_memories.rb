class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.integer :user_id
      t.text :memory_description
      t.string :memory_title
      t.timestamps null: false
    end
  end
end
