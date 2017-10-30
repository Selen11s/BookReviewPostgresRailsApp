class AddAttachmentBookavatarToBooks < ActiveRecord::Migration[5.1]
  def self.up
    change_table :books do |t|
      t.attachment :bookavatar
    end
  end

  def self.down
    remove_attachment :books, :bookavatar
  end
end
