class AddAttachmentDocumentToCerts < ActiveRecord::Migration
  def self.up
    change_table :certs do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :certs, :document
  end
end
