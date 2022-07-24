class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :name, default: "", null: false
      t.integer :status, default: 0, null: false
      t.datetime :due_datetime, default: -> { "NOW()" } , null: false
      t.string :client_name, default: "", null: false
      t.string :client_email, default: "", null: false
      t.string :client_mobile, default: "", null: false
      t.timestamps
    end
  end
end
