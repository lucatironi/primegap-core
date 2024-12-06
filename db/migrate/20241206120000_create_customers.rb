class CreateCustomers < ActiveRecord::Migration[8.0]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :company_id

      t.timestamps
    end
    add_index :customers, :company_id
  end
end
