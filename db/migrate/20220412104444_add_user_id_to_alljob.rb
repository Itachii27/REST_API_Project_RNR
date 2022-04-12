class AddUserIdToAlljob < ActiveRecord::Migration[7.0]
  def change
    add_column :alljobs, :user_id, :integer
    add_index :alljobs, :user_id
  end
end
