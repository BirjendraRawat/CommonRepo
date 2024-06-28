class AddColumnToAdmin < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :password_digest, :string
    add_column :admins, :address, :text
    add_column :admins, :address2, :text
  end
end
