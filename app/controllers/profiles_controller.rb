class ProfilesController < ApplicationController
	#before_filter :login_required #Callback log in authentication
	before_filter :authenticate_user! #Devise callback log in authentication

	def index
		#@profile = Profile.find(params[:id])
		@profile = current_user.profile
	end

	def new	
		@profile = Profile.new
	end

	def create
		@profile = current_user.build_profile(profile_params)
		if @profile.save
			redirect_to :action => 'index'
		else
			render :new
		end

	end
		
	def edit
		@profile = current_user.profile
	end

	def update
		@profile = current_user.profile
		if @profile.update(profile_params)
			redirect_to :action => "index"
		else
			render :edit
		end
	end


private
    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
    	params.require(:profile).permit(:biography, :city_born, :date_of_birth, :hobbie, :dream, :job_history, :fear, :other, :profile_picture)
    end

end
