class AddLoansToUsers < ActiveRecord::Migration
  def change
    add_column :users, :loans, :string
  end
end
