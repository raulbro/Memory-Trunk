class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
    	t.integer :user_id
    	t.integer :memory_id
    	t.string :video_url
    end
  end
end
