class CreateTravelVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :travel_vendors do |t|
      t.string :name
      t.string :ph_no
      t.string :email
      t.string :url

      t.timestamps
    end
  end
end
