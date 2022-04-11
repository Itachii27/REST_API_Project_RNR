class RemoveAllusersIdFromAlljobs < ActiveRecord::Migration[7.0]
  def change
    remove_index :alljobs, :allusers_id
    remove_column :alljobs, :allusers_id, :integer
  end
end
