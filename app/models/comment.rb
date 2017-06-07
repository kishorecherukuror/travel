class Comment < ApplicationRecord
	belongs_to :travel_vendor , optional: true
	has_many :replies , class_name: "Comment", foreign_key: "comment_id"
end
