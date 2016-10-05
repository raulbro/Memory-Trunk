class RemoveColumns < ActiveRecord::Migration
  def self.up
  	remove_column :users, :date_of_birth, :datetime
  end

  def self.down
  	add_column :users, :date_of_birth, :datetime
  end

end
