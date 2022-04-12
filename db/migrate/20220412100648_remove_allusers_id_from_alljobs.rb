class RemoveAllusersIdFromAlljobs < ActiveRecord::Migration[7.0]
  def change
    remove_column :alljobs, :allusers_id, :string
  end
end
