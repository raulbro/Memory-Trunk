class PicturesController < ApplicationController
	before_filter :authenticate_user! #Devise callback log in authentication

	def index
		@pictures = Picture.pictures_by_user_id(current_user.id).desc_order
	end

	def show

	end

	def new
		@picture = Picture.new
	end

	def create
		@picture = Picture.create(picture_params)
		@picture.user_id = current_user.id
		if @picture.save
			redirect_to :action => 'index', notice: 'Picture was successfully added. '
			#redirect_to :action => 'show', :id => @memory[:id]
		end
		# @picture.user_id = current_user.id
		# if @picture.save
		# 	redirect_to :action => 'index'
		# else
		# 	render :new
		# end
		# params[:picture_data].each do |picture|
		# 	Picture.create(picture_params)
		# end
	end

	private

	def picture_params
		params.require(:picture).permit(:picture_data)
	end

end