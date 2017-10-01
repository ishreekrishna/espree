class Profile < ApplicationRecord
	acts_as_nested_set
	belongs_to :spree_user
	after_create :generate_uuid
	
	belongs_to :parent, class_name: "Profile", foreign_key: :parent_id
	has_many :children, class_name: "Profile", foreign_key: :parent_id


	def generate_uuid
		self.uuid = SecureRandom.uuid
		self.save
	end


	def full_name
		first_name + last_name	
	end


end
