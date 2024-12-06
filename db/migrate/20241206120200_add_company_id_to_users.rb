class AddCompanyIdToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :company_id, :integer
    add_index :users, :company_id
  end
end
