class AddDepartementIdToReview < ActiveRecord::Migration
  def up
  	add_column :reviews, :departement_id, :integer

  	add_index :reviews, :departement_id
  end
  def down
  	remove_index :reviews, :departement_id

  	remove_column :reviews, :departement_id
  end
end
