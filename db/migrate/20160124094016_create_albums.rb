class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :memory_id
      t.string :title
      t.text :description
      t.timestamps null: false
    end
  end
end
