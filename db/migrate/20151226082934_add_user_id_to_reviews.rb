class AddUserIdToReviews < ActiveRecord::Migration
  def up
  	add_column :reviews, :user_id, :integer

  	add_index :reviews, :user_id
  end

  def down
  	remove_index :reviews, :user_id

  	remove_column :reviews, :user_id
  end
end
