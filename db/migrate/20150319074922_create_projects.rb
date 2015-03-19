class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :zoho_id
      t.string :name
      t.decimal :amount
      t.integer :zoho_account_id
      t.string :stage
      t.string :project_type
      t.decimal :probability
      t.string :next_step
      t.datetime :created_at
      t.datetime :updated_at
      t.text :description
      t.decimal :expected_revenue
      t.string :system_type
      t.string :battery_type
      t.string :service_area

      t.timestamps
    end
    add_index :projects, :zoho_id
  end
end
