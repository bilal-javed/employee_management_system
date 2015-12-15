class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :qualification
      t.datetime :dateofbirth

      t.timestamps
    end
  end
end
