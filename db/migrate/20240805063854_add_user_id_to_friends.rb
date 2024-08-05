class AddUserIdToFriends < ActiveRecord::Migration[7.2]
  def change
    add_column :friends, :user_id, :integer
    add_index :friends, :user_id
  end
end
