class Contact < ActiveRecord::Base
	has_one_attached :image
	validates :name, :email, :phone, :address, presence: true 
end
