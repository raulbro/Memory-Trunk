class AddTwoColumnsToPicturesTable < ActiveRecord::Migration
  def up
  	add_column :pictures, :user_id, :integer
  	add_column :pictures, :memory_id, :integer
  end

  def down
  	remove_column :pictures, :user_id
  	remove_column :pictures, :memory_id
  end
end
