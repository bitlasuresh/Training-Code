class User < ApplicationRecord
	validates_presence_of:name,:phone_number
	validates_uniqueness_of:phone_number
	before_save:update_name

	def update_name
		self.name:"name-#{self.name}"
	end
end
