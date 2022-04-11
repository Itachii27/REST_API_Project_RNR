class CreateAllusers < ActiveRecord::Migration[7.0]
  def change
    create_table :allusers do |t|
      t.string :username
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
