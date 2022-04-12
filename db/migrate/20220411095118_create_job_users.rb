class CreateJobUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :job_users do |t|
      t.references :alljob, null: false, foreign_key: true
      t.references :alluser, null: false, foreign_key: true

      t.timestamps
    end
  end
end
