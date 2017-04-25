class User < ApplicationRecord
  has_many :sent_feedbacks, :class_name => 'Feedback', :foreign_key => 'sender_id'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
