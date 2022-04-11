class AddUsersNameToAlljobs < ActiveRecord::Migration[7.0]
  def change
    add_column :alljobs, :names, :string
  end
end


