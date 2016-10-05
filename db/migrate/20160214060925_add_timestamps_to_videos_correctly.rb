class AddTimestampsToVideosCorrectly < ActiveRecord::Migration
  def change_table
  	add_column :videos, created_at, :datetime
  	add_column :videos, updated_at, :datetime
  end
end
