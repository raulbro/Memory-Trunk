class Album < ActiveRecord::Base
	belongs_to :memory
	has_many :pictures


end
