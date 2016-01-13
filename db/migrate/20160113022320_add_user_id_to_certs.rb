class AddUserIdToCerts < ActiveRecord::Migration
  def change
    add_column :certs, :user_id, :integer
    add_index :certs, :user_id
  end
end
