class AddAlljobIdToAlluser < ActiveRecord::Migration[7.0]
  def change
    add_column :allusers, :alljob_id, :integer
    add_index :allusers, :alljob_id
  end
end
