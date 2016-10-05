class ChangeColumnDefaultForUsersLastName < ActiveRecord::Migration
  def change
  	change_column_default(:users, :last_name, nil)
  end
end
