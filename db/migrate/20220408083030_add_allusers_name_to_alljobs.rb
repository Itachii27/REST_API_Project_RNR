class AddAllusersNameToAlljobs < ActiveRecord::Migration[7.0]
  def change
    add_column :alljobs, :name, :string
  end
end
