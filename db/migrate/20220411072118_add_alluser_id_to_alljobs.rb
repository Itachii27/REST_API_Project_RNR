class AddAlluserIdToAlljobs < ActiveRecord::Migration[7.0]
  def change
    add_column :alljobs, :alluser_id, :integer
    add_index :alljobs, :alluser_id
  end
end
