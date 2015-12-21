class ChangeDataTypeToDateInEmployees < ActiveRecord::Migration
  def up
  	change_column :employees, :dateofbirth, :date
  end

  def down
  	change_column :employees, :dateofbirth, :datetime
  end
end
