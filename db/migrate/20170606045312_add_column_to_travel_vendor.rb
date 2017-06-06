class AddColumnToTravelVendor < ActiveRecord::Migration[5.0]
  def change
    add_column :travel_vendors, :user_id, :integer
  end
end
