class TravelVendor < ApplicationRecord
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "download.jpg"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  	belongs_to :user
  	has_many :comments
end
