class AddAllusersIdToAlljobs < ActiveRecord::Migration[7.0]
  def change
    add_column :alljobs, :allusers_id, :integer
    add_index :alljobs, :allusers_id
  end
end
