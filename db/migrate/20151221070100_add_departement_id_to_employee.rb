class AddDepartementIdToEmployee < ActiveRecord::Migration
  def up
  	add_column :employees, :departement_id, :integer

  	add_index :employees, :departement_id
  end

  def down
  	remove_index :employees, :departement_id

  	remove_column :employees, :departement_id
  end
end
