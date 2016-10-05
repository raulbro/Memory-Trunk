class AddProfilePictureToProfile < ActiveRecord::Migration
  def self.up
  	add_attachment :profiles, :profile_picture
  end

  def self.down
  	remove_attachment :profiles, :profile_picture
  end
end
