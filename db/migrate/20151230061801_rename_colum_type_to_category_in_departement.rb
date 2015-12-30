class RenameColumTypeToCategoryInDepartement < ActiveRecord::Migration
  def up
  	rename_column :departements, :type, :category
  end

  def down
  	rename_column :departements, :category, :type
  end
end
