class RemoveDepartmentIdFromUser < ActiveRecord::Migration
  def up
  	remove_index :users, :departement_id

  	remove_column :users, :departement_id
  end

  def down
  	add_column :users, :departement_id, :integer

  	add_index :users, :departement_id
  end
end
