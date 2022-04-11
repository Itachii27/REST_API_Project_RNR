class RemoveAllusersNameFromAlljobs < ActiveRecord::Migration[7.0]
  def change
    remove_column :alljobs, :Allusers_name, :string
  end
end
