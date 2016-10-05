class Picture < ActiveRecord::Base
	# belongs_to :album
	belongs_to :user
	belongs_to :memory

	has_attached_file :picture_data, styles: {
		thumb: '100x100>',
		square: '200x200#',
		medium: '300x500>'
	},
	:default_url => "/public/images/raulprofile.jpg"

	#Validates the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :picture_data, :content_type => /\Aimage\/.*\Z/

	def self.pictures_by_user_id(user_id)
		where("user_id = ?", user_id)
	end

	def self.desc_order
		order("created_at desc")
	end

	def self.pictures_by_memory_id(memory_id_param)
		where("memory_id = ?", memory_id_param)
	end

	def self.pictures_by_album_id(album_id)
		where("album_id = ?", album_id)
	end
end
