class MemoriesController < ApplicationController
	before_filter :authenticate_user! #Devise callback log in authentication
	before_action :set_memory, only: [:show, :edit, :update, :destroy]

	def index
		@memories = Memory.memories_by_user_id(current_user.id).desc_order
		#@memories = current_user.memories
	end

	def new
		@memory = Memory.new
		1.times {@memory.pictures.build}
	end

	def create
		@memory = Memory.new(memory_params)
		@memory.user_id = current_user.id
		#@memory.pictures.build()
		@memory.pictures do |pic|
			asd
			@tes = Picture.new(params[:picture_params])
			@tes.user_id = current_user.id
			@tes.save
			pic.user_id = current_user.id
			pic.save
			pic

		end
		#@memory = current_user.memories.build(memory_params)
		if @memory.save
			redirect_to :action => 'show', :id => @memory[:id], notice: 'Memory was successfully created. '
			#redirect_to :action => 'show', :id => @memory[:id]
		else
			render :new
		end
	end

	def edit
		#@memory = Memory.find_by_id(params[:id])
		1.times {@memory.pictures.build}
	end

	def update
		if @memory.update(memory_params)
			render :show, notice: 'Memory was successfully saved'
			#render :action => 'edit', :id => @memory.id
		else
			render :edit, notice: 'Could not save the memory'
		end
	end

	def show
		@pictures = Picture.pictures_by_memory_id(params[:id])
	end

private

    def set_memory
    	@memory = Memory.memory_by_id(params[:id])
    end
	
	def memory_params
		params.require(:memory).permit(:memory_description, :memory_title, :memory_display_picture, pictures_attributes: [:picture_data])#list of required//permited params or columns on the memory table that we want to save/modify);
	end

	def picture_params
  		params.require(:picture).permit(:picture_data)
	end

end
