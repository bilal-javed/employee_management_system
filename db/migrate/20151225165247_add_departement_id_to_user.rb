class AddDepartementIdToUser < ActiveRecord::Migration
  def up
  	add_column :users, :departement_id, :integer

  	add_index :users, :departement_id
  end

  def down
  	remove_index :users, :departement_id

  	remove_column :users, :departement_id
  end
end
