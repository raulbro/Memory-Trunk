class Memory < ActiveRecord::Base
	belongs_to :user
	# has_many :albums #Create a model and table albums maybe? and then create the relations from albums to pictures.
	has_many :videos
	has_many :pictures 

	#Nested models
	accepts_nested_attributes_for :pictures, :reject_if => lambda { |t| t['trip_image'].nil? }

	# This associates the attribute ":memory_display_picture" with a file attachment
	has_attached_file :memory_display_picture, styles: {
		thumb: '100x100>',
		square: '200x200#',
		medium: '300x500>'
	},
	:default_url => "/public/images/raulprofile.jpg"

	#Validates the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :memory_display_picture, :content_type => /\Aimage\/.*\Z/

	def self.memories_by_user_id(user_id)
		where("user_id = ?", user_id)
	end

	def self.desc_order
		order("created_at desc")
	end

	def self.memory_by_id(memory_id)
		find_by_id(memory_id)
	end

	def self.last_eight_memories
		limit(8).order("id desc");
	end

end
