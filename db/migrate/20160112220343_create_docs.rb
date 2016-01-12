class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.text :description
      t.image :upload

      t.timestamps null: false
    end
  end
end
