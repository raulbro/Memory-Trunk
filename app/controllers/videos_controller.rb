class VideosController < ApplicationController
	before_filter :authenticate_user! #Devise callback log in authentication

	def index
		@videos = Video.videos_by_user_id(current_user.id).desc_order
	end

	def show

	end

	def new


	end

end