class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :employment
      t.string :loans
      t.string :amount

      t.timestamps null: false
    end
  end
end
