class Contact < ActiveRecord::Base
	# add validation
	validates :name, :email, :phone, :address, presence: true
end
