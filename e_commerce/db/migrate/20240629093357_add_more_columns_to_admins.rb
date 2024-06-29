class AddMoreColumnsToAdmins < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :contact, :string
    add_column :admins, :role, :string
    add_column :admins, :state, :string
    add_column :admins, :city, :string
    add_column :admins, :zip, :integer
  end
end
