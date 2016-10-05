class CreateVideosTableCorrectly < ActiveRecord::Migration
  def up
    create_table :videos do |t|
    	t.integer :user_id
    	t.integer :memory_id
    	t.string :video_url
        t.timestamps null: false
    end
  end

  def down
  	drop_table :videos
  end
end
