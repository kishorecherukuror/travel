class AddColumnToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :travel_vendor_id, :integer
  end
end
