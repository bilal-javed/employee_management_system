class AddUserIdToDepartment < ActiveRecord::Migration
  def up
  	add_column :departements, :user_id, :integer

  	add_index :departements, :user_id
  end

  def down
  	remove_index :departements, :user_id

  	remove_column :departements, :user_id
  end
end
