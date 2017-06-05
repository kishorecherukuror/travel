class AddAttachmentAvatarToTravelVendors < ActiveRecord::Migration
  def self.up
    change_table :travel_vendors do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :travel_vendors, :avatar
  end
end
