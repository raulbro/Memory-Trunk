class Video < ActiveRecord::Base
	belongs_to :memory
	belongs_to :user

	def self.videos_by_user_id(user_id)
		where("user_id = ?", user_id)
	end

	def self.desc_order
		order("created_at desc")
	end

	def self.videos_by_memory_id(memory_id_param)
		where("memory_id = ?", memory_id_param)
	end
end
