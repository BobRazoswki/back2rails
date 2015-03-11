class AddAttachmentPicToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :documents, :pic
  end
end
