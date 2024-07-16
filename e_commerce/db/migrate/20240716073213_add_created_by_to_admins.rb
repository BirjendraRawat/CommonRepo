class AddCreatedByToAdmins < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :created_by_id, :integer
    add_index :admins, :created_by_id
    add_foreign_key :admins, :admins, column: :created_by_id
  end
end
