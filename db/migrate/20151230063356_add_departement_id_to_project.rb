class AddDepartementIdToProject < ActiveRecord::Migration
  def up
  	add_column :projects, :departement_id, :integer

  	add_index :projects, :departement_id
  end

  def down
  	remove_index :projects, :departement_id

  	remove_column :projects, :departement_id
  end
end
