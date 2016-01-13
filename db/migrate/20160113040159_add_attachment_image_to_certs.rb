class AddAttachmentImageToCerts < ActiveRecord::Migration
  def self.up
    change_table :certs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :certs, :image
  end
end
