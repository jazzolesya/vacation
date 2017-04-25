class Feedback < ApplicationRecord
	belongs_to :sender, :foreign_key => "sender_id", :class_name => 'User'
	belongs_to :hotel
end
