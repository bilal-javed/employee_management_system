class AddColumnTypeInDepartement < ActiveRecord::Migration
  def up
  	add_column :departements, :type, :string
  end

  def down
  	remove_column :departements, :type
  end
end