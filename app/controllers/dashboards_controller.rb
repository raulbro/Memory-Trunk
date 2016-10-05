class DashboardsController < ApplicationController
	before_filter :authenticate_user! #Devise callback log in authentication

	def index
		@profile = current_user.profile
		@memories = Memory.memories_by_user_id(current_user.id).last_eight_memories
		if @profile == nil
			@profile = Profile.new
		end
	end

	def update
		@profile = current_user.profile
		if @profile.save(:profile_params)
			redirect_to @profile
		else
			redirect_to @profile, notice: "Picture was not saved"
		end
	end

	private

	def profile_params
		params.require(:profile).permit(:profile_picture)
	end


end