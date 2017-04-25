class Hotel < ApplicationRecord
	validates :title, :address, presence: true
	has_many :feedbacks
	mount_uploader :photo, PhotoUploader
end
