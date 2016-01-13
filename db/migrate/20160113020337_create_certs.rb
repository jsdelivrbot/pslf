class CreateCerts < ActiveRecord::Migration
  def change
    create_table :certs do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
