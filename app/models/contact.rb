class Contact < ActiveRecord::Base
	attribute :user
		# add validation
	validates :name, :email, :phone, :address, presence: true
end
