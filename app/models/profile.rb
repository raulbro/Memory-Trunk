class Profile < ActiveRecord::Base
	belongs_to :user

	# This associates the attribute ":profile_picture" with a file attachment
	has_attached_file :profile_picture, styles: {
		thumb: '100x100>',
		square: '200x200#',
		medium: '300x500>'
	},
	:default_url => "/public/images/fmh.jpg"

	#Validates the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :profile_picture, :content_type => /\Aimage\/.*\Z/
end
