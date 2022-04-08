class AddJobStatusToAlljobs < ActiveRecord::Migration[7.0]
  def change
    add_column :alljobs, :jobStatus, :boolean
  end
end
