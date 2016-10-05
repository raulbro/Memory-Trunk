class AddMemoryDisplayPictureToMemories < ActiveRecord::Migration
  def self.up
  	add_attachment :memories, :memory_display_picture
  end

  def self.down
  	remove_attachment :memories, :memory_display_picture
  end
end
