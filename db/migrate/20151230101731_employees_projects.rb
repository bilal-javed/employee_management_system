class EmployeesProjects < ActiveRecord::Migration
  def up
  	create_table 'employees_projects', :id => false do |t|
  		t.column 'employee_id', :integer
  		t.column 'project_id', :integer
  	end
  end

  def down
  	drop_table 'employees_projects'
  end
end
