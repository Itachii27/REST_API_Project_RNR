class RemoveAlljobIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :alljob_id, :integer
  end
end
