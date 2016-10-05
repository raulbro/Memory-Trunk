class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :album_id
      t.attachment :picture_data
      t.timestamps null: false
    end
  end
end
